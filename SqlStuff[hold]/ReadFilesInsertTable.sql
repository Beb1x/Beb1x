--does the table exist ? if not create one
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'TABLE_NAME')
BEGIN
    create TABLE TABLE_NAME (
        file_details VARCHAR(305), -- Combining file_size and file_name
        file_date DATETIME,
		bytes VARCHAR(255)
    );
END

-- Pus in aplicare aici creez temp unde e totul raw
CREATE TABLE #TempDirTree (
    OutputLine VARCHAR(500)
);

-- Use xp_cmdshell to get file names
INSERT INTO #TempDirTree (OutputLine)
EXEC xp_cmdshell 'dir /a-d "C:\PATH\TO\YOUR_FILES"'; -- Adjust the path accordingly
-- Delete rows that are not file names
DELETE FROM #TempDirTree WHERE OutputLine IS NULL OR OutputLine LIKE '%Volume%' or OutputLine like '%bytes%' or OutputLine like '%Volume%' or OutputLine like '%directory%';

-- Iterate through the output and insert file details into TABLE_NAME
DECLARE @fileInfoLine VARCHAR(500);
DECLARE cur CURSOR FOR
SELECT OutputLine
FROM #TempDirTree;

OPEN cur;

FETCH NEXT FROM cur INTO @fileInfoLine;

WHILE @@FETCH_STATUS = 0
BEGIN
    INSERT INTO TABLE_NAME (file_details, file_date)
    VALUES (
        SUBSTRING(@fileInfoLine, 21, 20) + ' ' + SUBSTRING(@fileInfoLine, 40, 100), -- Combining file_size and file_name
        CONVERT(DATETIME, SUBSTRING(@fileInfoLine, 1, 19), 103) -- Extract date modified
    );

    FETCH NEXT FROM cur INTO @fileInfoLine;
END;

CLOSE cur;
DEALLOCATE cur;

select*From #TempDirTree
--;) drop
DROP TABLE #TempDirTree;
-- sterge spatiu file_detail
UPDATE TABLE_NAME
SET file_details = LTRIM(file_details)
WHERE file_details LIKE ' %';
UPDATE TABLE_NAME
SET bytes = LEFT(file_details, CHARINDEX(' ', file_details) - 1),
    file_details = SUBSTRING(file_details, CHARINDEX(' ', file_details) + 1, LEN(file_details))
WHERE CHARINDEX(' ', file_details) > 0;
-- if this disturbs you please updated it how you want it
-- it separate Bytes from file_name
-- i mean it delete the space(left of File_details)
-- then trims the bytes from  file_name to bytes
SELECT * FROM TABLE_NAME;
