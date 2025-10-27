$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

function Tig-With-All {
  tig --all @args
}

$local_tmp_gvim_path = "$env:USERPROFILE\cwork\programming\vim\install\vim\gvim.exe"

Set-Alias -Scope Global -Name v    -Value vim
Set-Alias -Scope Global -Name gvim -Value $local_tmp_gvim_path
Set-Alias -Scope Global -Name g    -Value git
Set-Alias -Scope Global -Name tiga -Value "Tig-With-All"

# 重複した履歴を保存しない
Set-PSReadlineOption -HistoryNoDuplicates

# key binding
# Get-PSReadLineKeyHandler
Set-PSReadLineKeyHandler -Chord Ctrl+p        -Function PreviousHistory
Set-PSReadLineKeyHandler -Chord Alt+f         -Function ForwardWord
Set-PSReadLineKeyHandler -Chord Alt+b         -Function BackwardWord
Set-PSReadLineKeyHandler -Chord Alt+Backspace -Function BackwardDeleteWord

#'$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding' + [Environment]::Newline + (Get-Content -Raw $PROFILE -ErrorAction SilentlyContinue) | Set-Content -Encoding utf8 $PROFILE
