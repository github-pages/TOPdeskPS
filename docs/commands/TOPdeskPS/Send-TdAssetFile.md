---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version:
schema: 2.0.0
---

# Send-TdAssetFile

## SYNOPSIS
Upload a file to an asset

## SYNTAX

```
Send-TdAssetFile [-AssetId] <String> [-File] <FileInfo> [[-ContentType] <String>] [<CommonParameters>]
```

## DESCRIPTION
Upload a file to an asset

## EXAMPLES

### EXAMPLE 1
```
Get-TdAsset -NameFragment 'test-computer' | Send-TdAssetFile -File "C:\log.txt"
```

Sends a File to the asset named test-computer.

## PARAMETERS

### -AssetId
Id of the asset that you want to send a file to.
See Get-TdAsset

```yaml
Type: String
Parameter Sets: (All)
Aliases: Id

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -File
Path and name to the file that you want to upload to the incident.

```yaml
Type: FileInfo
Parameter Sets: (All)
Aliases: InFile

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ContentType
You can manually specify the type of content that it is.
This should only be used if you experience issues.
This contenttype is passed to Invoke-RestMethod

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
