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
  @('02.01', '03d-extras.png', '1793405238598-py0g2o', @(@(554, 95, 230, 20), @(638, 196, 76, 17), @(322, 231, 462, 31), @(322, 305, 462, 40)), @()),
  @('02.01', '07-observacao-na-lista.png', '1793405256258-rewq5z', @(,@(176, 206, 220, 17)), @()),
  @('02.01', '08-observacao-no-pedido.png', '1793405291352-bo6yeq', @(,@(590, 98, 192, 46)), @(,@(439, 108, 106, 15))),
  @('06.04', '05-inativo.png', '1793404630371-3g5svf', @(@(640, 32, 154, 22), @(698, 112, 36, 16), @(700, 131, 82, 16)), @()),
  @('06.06', '02-seguranca.png', '1793404006416-624rss', @(@(179, 58, 46, 17), @(758, 98, 28, 18), @(319, 127, 234, 68), @(319, 205, 290, 84)), @()),
  @('06.06', '03-fechamento.png', '1793404136345-2aowbg', @(@(220, 58, 72, 17), @(319, 132, 380, 72), @(319, 216, 462, 61), @(319, 405, 210, 106)), @()),
  @('06.06', '04-cliente.png', '1793404197654-wiyy5m', @(@(292, 58, 32, 17), @(316, 93, 467, 20), @(319, 119, 275, 46)), @()),
  @('06.06', '07-taxa-entrega.png', '1793402338683-6ssdie', @(@(322, 269, 242, 52), @(326, 362, 120, 17), @(702, 399, 72, 19)), @()),
  @('06.06', '11-status-cancelados.png', '1793404237110-yjnghk', @(@(395, 279, 48, 15), @(359, 388, 154, 90)), @())
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
