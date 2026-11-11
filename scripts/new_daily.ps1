param(
  [string]$Date = (Get-Date -Format 'yyyy-MM-dd'),
  [string]$GeneratedAt = (Get-Date -Format 'yyyy-MM-dd HH:mm:ss zzz')
)

$target = Join-Path $PSScriptRoot "..\daily\$Date.md"
$newsTarget = Join-Path $PSScriptRoot "..\news\$Date.md"
if (Test-Path $target) {
  Write-Error "日报已存在：$target"
  exit 1
}
$template = Get-Content (Join-Path $PSScriptRoot "..\templates\daily.md") -Raw
$content = $template.Replace('{{DATE}}', $Date).Replace('{{GENERATED_AT}}', $GeneratedAt)
Set-Content -Path $target -Value $content -Encoding UTF8
if (-not (Test-Path $newsTarget)) {
  @"
# AI 新闻资讯｜$Date

> 当日新闻与官方公告归档。每条记录请保留原始链接、日期、方向标签和后续跟踪项。

"@ | Set-Content -Path $newsTarget -Encoding UTF8
}
Write-Output "已生成：$target"
