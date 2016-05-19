Register-EditorCommand `
    -Name "VSCPSUtils.OnlinePSEditorHelp" `
    -DisplayName "Online PSEditor Help" `
    -ScriptBlock {        
        start "http://powershell.github.io/PowerShellEditorServices/guide/extensions.html"
    }
