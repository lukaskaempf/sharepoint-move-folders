#Install-Module -Name "PnP.Powershell"

#Config Variables
$SiteURL = "https://example.sharepoint.com/sites/Daten"
$SourceFolderURL= "Freigegebene Dokumente/Firmendaten/Auftrage 2020" #Site Relative URL from the current site
$TargetFolderURL = "/sites/Archiv/Freigegebene Dokumente/Auftrage Archiv" #Server Relative URL of the Target Parent Folder
 
#Connect to PnP Online
Connect-PnPOnline -Url $SiteURL -Interactive
  
  
#move folder between sites in sharepoint online using powershell
Move-PnPFile -TargetUrl  $TargetFolderURL -SourceUrl $SourceFolderURL -AllowSchemaMismatch    

