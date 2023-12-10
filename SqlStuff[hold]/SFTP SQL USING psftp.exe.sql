-- Use the 'YourDBName' database
USE YourDBName;

-- Check if the table 'SqlToSfpt' exists; if not, create it
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'SqlToSfpt')
BEGIN
    CREATE TABLE SqlToSfpt (
        Filename VARCHAR(305)
    );
END
--
--i dont know how to explain, so i asked gpt to do it for me, thx y'all
--------------------------------------------------------

-- Define a command to create a text file for SFTP operations
DECLARE @creezFisierText NVARCHAR(1000);
SET @creezFisierText = 'echo cd /PATHTO/SFTPFOLDER > C:\PATHFROMYOURSERVER\sftp_script.txt && echo ls >> C:\PATHFROMYOURSERVER\sftp_script.txt';
-- This command generates a script for SFTP operations, setting the remote directory using 'cd'

-- Execute the command using xp_cmdshell
EXEC xp_cmdshell @creezFisierText;
GO

-- Create a temporary table to store raw output
CREATE TABLE #TempDirTree (
    OutputLine VARCHAR(1000)
);
-- If you have questions, I can answer, but I emphasize that I can do it, but I'm not good at explaining.

-- Define a command to execute SFTP using psftp.exe
DECLARE @ScriptulPentruCmd NVARCHAR(1000);
SET @ScriptulPentruCmd = 'C:\PATHFROMYOURSERVER\psftp.exe Username@ftp.EXAMPLE.COM -P [PUT HERE THE PORT, Like 420] -pw [PUT PASSWORD HERE] -2 -batch -hostkey "ssh-ed25519 256 [HOST KEY HEREEE]"  -b C:\PATHFROMYOURSERVER\sftp_script.txt';
-- This command executes SFTP using psftp.exe with specified parameters

-- Insert the SFTP command output into the temporary table
INSERT INTO #TempDirTree (OutputLine)
EXEC xp_cmdshell @ScriptulPentruCmd;

-- Display the output of the SFTP command
SELECT * FROM #TempDirTree;

-- Remove unnecessary lines from the output
DELETE FROM #TempDirTree
WHERE OutputLine IS NULL 
OR OutputLine LIKE '%Listing%'
OR OutputLine LIKE '%remote%' 
OR OutputLine = '..'
OR OutputLine = '.'
OR OutputLine = '/' 
OR OutputLine LIKE '%whatchuwantboy%';
GO

-- Magic select: Reverse, substring, and order by filename length
INSERT INTO SqlToSfpt (Filename)
SELECT 
    REVERSE(SUBSTRING(REVERSE(outputline), 1, CHARINDEX(' ', REVERSE(outputline)) - 1)) AS filename
FROM #TempDirTree
ORDER BY LEN(outputline) DESC;

-- Select a column from the 'FarmacieConfig' table
SELECT codims FROM FarmacieConfig;

-- Select all columns from 'SqlToSfpt' where the Filename contains '20220603'
SELECT * FROM SqlToSfpt WHERE Filename LIKE '%20220603%';

/*
-- Uncomment and modify the following lines to create a view
CREATE VIEW SqlToSfptAsView AS
SELECT fc.table your want to join on, ic.Filename
FROM Table you want to join fc
JOIN SqlToSfpt ic ON ic.Filename LIKE '%' + CONVERT(VARCHAR(50), fc.table) + '%';
*/

-- Select all columns from the created view
SELECT * FROM SqlToSfptAsView;
