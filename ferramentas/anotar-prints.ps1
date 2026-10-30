# Desenha os quadrados vermelhos (e tarjas cinzas) nos prints dos manuais.
# Uso:
#   powershell -NoProfile -ExecutionPolicy Bypass -File ferramentas\anotar-prints.ps1 `
#     -SrcDir "<pasta tool-results com os mcp-Claude_Browser-blob-*.jpg>" `
#     -OutRoot "docs\imagens"
# Edite a lista $shots antes de rodar. Cada item:
#   @('<código>', '<arquivo.png>', '<id do blob>', @(quadrados), @(tarjas))
# Quadrado e tarja = @(x, y, largura, altura), em pixels do print (800 x 478 ou 800 x 530).
# Um único quadrado precisa da vírgula: @(,@(x, y, l, a)).
param([string]$SrcDir, [string]$OutRoot)
Add-Type -AssemblyName System.Drawing
$p = 'mcp-Claude_Browser-blob-'
$shots = @(
  @('06.06', '05-barra-salvar.png', '1793402038247-6uwjgz', @(@(321, 278, 98, 17), @(667, 276, 116, 21), @(672, 519, 120, 23)), @()),
  @('06.06', '06-modos-delivery.png', '1793401993099-1ob9w3', @(@(56, 316, 84, 18), @(316, 81, 467, 18)), @()),
  @('06.06', '07-taxa-entrega.png', '1793402005636-ucd0l5', @(@(323, 125, 458, 52), @(701, 190, 72, 20)), @()),
  @('06.06', '08-status-delivery.png', '1793402005636-7mkp9e', @(@(323, 249, 121, 18), @(712, 280, 58, 16)), @()),
  @('06.06', '09-estabelecimento.png', '1793402005636-42htpp', @(@(316, 303, 467, 22), @(323, 337, 455, 56), @(327, 399, 78, 16)), @()),
  @('06.06', '10-atendimento.png', '1793402005636-m7eglh', @(@(320, 166, 165, 26), @(320, 470, 130, 22)), @())
)
$pen = New-Object System.Drawing.Pen ([System.Drawing.Color]::FromArgb(230, 220, 38, 38)), 3
foreach ($s in $shots) {
  $src = Join-Path $SrcDir "$p$($s[2]).jpg"
  if (-not (Test-Path $src)) { Write-Warning "Não achei $src"; continue }
  $outDir = Join-Path $OutRoot $s[0]; New-Item -ItemType Directory -Force $outDir | Out-Null
  $img = [System.Drawing.Image]::FromFile($src)
  $bmp = New-Object System.Drawing.Bitmap $img.Width, $img.Height
  $g = [System.Drawing.Graphics]::FromImage($bmp); $g.SmoothingMode = 'AntiAlias'
  $g.DrawImage($img, (New-Object System.Drawing.Rectangle 0, 0, $img.Width, $img.Height), (New-Object System.Drawing.Rectangle 0, 0, $img.Width, $img.Height), [System.Drawing.GraphicsUnit]::Pixel)
  # Tarja cinza sólida para cobrir dados reais (CNPJ, IE, CSC, nomes). Desfoque não basta.
  $tarja = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(255, 214, 218, 224))
  foreach ($r in $s[4]) { $g.FillRectangle($tarja, $r[0], $r[1], $r[2], $r[3]) }
  $tarja.Dispose()
  foreach ($b in $s[3]) { $g.DrawRectangle($pen, $b[0], $b[1], $b[2], $b[3]) }
  $bmp.Save((Join-Path $outDir $s[1]), [System.Drawing.Imaging.ImageFormat]::Png)
  $g.Dispose(); $bmp.Dispose(); $img.Dispose(); $s[1]
}
