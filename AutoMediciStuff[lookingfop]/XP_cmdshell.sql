declare @FolderFrom nvarchar(150);           
DECLARE @MedicAop TABLE (ArhivaFtp NVARCHAR(4000));       
DECLARE @Dpath NVARCHAR(MAX);       
DECLARE @DwnCNAS NVARCHAR(MAX);       
DECLARE @DwnAOPSNAJ NVARCHAR(MAX);       
DECLARE @UnzipCommand1 NVARCHAR(MAX);      
DECLARE @UnzipCommand2 NVARCHAR(MAX);  
DECLARE @DeleteCommand NVARCHAR(MAX);   
DECLARE @COPYXMLCommand NVARCHAR(MAX);  
DECLARE @FisierAops NVARCHAR(4000);      
DECLARE @UrlCnas NVARCHAR(MAX);      
DECLARE @dataefectiv NVARCHAR(MAX);      
Declare @TmpDwnMedic TABLE (Output NVARCHAR(4000));     
declare @mkdir NVARCHAR(MAX);  
/*MKDIR folder*/  
Set @mkdir=  N'xp_cmdshell '' mkdir  C:\PATHTO\Medicizip  '''  
set @FolderFrom = '\\'+@@servername+'\Medici\Automat\'   /*IF SHARED NOT HARDCODED*/
/*--AOPSNAJ IF FTP   */    
INSERT INTO @MedicAop       
EXEC xp_cmdshell 'curl.exe -u USER:PASSWD --list-only "ftp://Public-IP/Medici/"| findstr "AOPSNAJ"';       
SET @FisierAops = '';      
SELECT @FisierAops = ArhivaFtp       
FROM @MedicAop       
WHERE ArhivaFtp LIKE '%AOPSNAJ_NomenclatoareFarmacii_%';     SET @FisierAops = LTRIM(RTRIM(@FisierAops));         
/*CASA VASLUI FOR EXAMPLE*/  
INSERT INTO @TmpDwnMedic(Output)       
EXEC xp_cmdshell 'curl -s  "http://www.casan.ro/cjasvs/page/nomenclatoare.html" --list-only | findstr "http://www.casan.ro/cjasvs/media/pageFiles/NomenclatoareFarmacii_"';        
SELECT @UrlCnas = SUBSTRING(Output, CHARINDEX('http', Output), CHARINDEX('.xml.zip', Output) + LEN('.xml.zip') - CHARINDEX('http', Output))      
FROM @TmpDwnMedic       
WHERE Output LIKE '%http://www.casan.ro/cjasvs/media/pageFiles/NomenclatoareFarmacii_%.xml.zip%';       
SELECT @dataefectiv = SUBSTRING(@UrlCnas, CHARINDEX  
('NomenclatoareFarmacii_', @UrlCnas) + LEN('NomenclatoareFarmacii_'),CHARINDEX('.xml.zip', @UrlCnas) -   
CHARINDEX('NomenclatoareFarmacii_', @UrlCnas) - LEN('NomenclatoareFarmacii_'));       
  
/* downloading i know, it can be done more good, but this is the second version tbh and this worked best 4 me */  
SET @DwnAOPSNAJ = N'xp_cmdshell ''curl -u USER:PASSWD "ftp://Public-IP/Medici/"' + @FisierAops + ' -o  C:\PATHTO\Medicizip\'+@FisierAops + '''';       
SET @DwnCNAS = N'xp_cmdshell ''curl -o C:\PATHTO\Medicizip\NomenclatoareFarmacii_' + @dataefectiv + '.xml.zip ' + @UrlCnas + '''';       
 /* Extracting */  
SET @UnzipCommand1 = N'xp_cmdshell ''powershell Expand-Archive -force -Path  C:\PATHTO\Medicizip\NomenclatoareFarmacii_' + @dataefectiv + '.xml.zip -DestinationPath '+ @FolderFrom +'''';       
SET @UnzipCommand2 = N'xp_cmdshell ''powershell Expand-Archive -force -Path  C:\PATHTO\Medicizip\' + @FisierAops + ' -DestinationPath ' + @FolderFrom + '''';  
SET @DeleteCommand = N'xp_cmdshell ''del  C:\PATHTO\Medicizip\*.zip''';    
/* --1) downloading , leave the delay there brother  */     
Exec sp_executesql @mkdir;  
EXEC sp_executesql @DwnCNAS       
EXEC sp_executesql @DwnAOPSNAJ;        
WAITFOR DELAY '00:00:10';        
/*--2) Extracting  */  
EXEC sp_executesql @UnzipCommand1      
EXEC sp_executesql @UnzipCommand2;       
WAITFOR DELAY '00:00:10';        
/*--Deleting zip files!  */      
EXEC sp_executesql @DeleteCommand;         
/*  
--update 09.11.2023  [1] --hardcoded asf
--update 29.07.2024  [2] --Semi hardcoded asf
--update 01.08.2024  [3] + [TOTAL OVERHAUL] -- STILL TOO hardcoded4me tbh
*/  
/**SF DESCARCARE / DEZARHIVARE / END **/  
