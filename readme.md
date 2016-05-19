
[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://azuredeploy.net/)

[Extending the Host Editor](http://powershell.github.io/PowerShellEditorServices/guide/extensions.html)

## Cmd to launch PSEditor Page

```
Register-EditorCommand `
    -Name "VSCPSUtils.OnlinePSEditorHelp" `
    -DisplayName "Online PSEditor Help" `
    -ScriptBlock {        
        start "http://powershell.github.io/PowerShellEditorServices/guide/extensions.html"
    }

```
## Cheat Sheet
### Logging 

Add to File|Preferences|User Settings
 
`"powershell.developer.editorServicesLogLevel": "Verbose"`

### Scriptblock
```
Register-EditorCommand `
    -Name "MyModule.MyEditorCommandWithContext" `
    -DisplayName "My command with context usage" `
    -ScriptBlock {
        param([Microsoft.PowerShell.EditorServices.Extensions.EditorContext]$context)
        Write-Output "The user's cursor is on line $($context.CursorPosition.Line)!"
    }
```

