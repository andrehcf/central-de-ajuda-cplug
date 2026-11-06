# Desenha os quadrados vermelhos (e tarjas cinzas) nos prints dos manuais.
# Uso:
#   powershell -NoProfile -ExecutionPolicy Bypass -File ferramentas\anotar-prints.ps1 `
#     -SrcDir "<pasta tool-results da sessão do Claude>" `
#     -OutRoot "docs\imagens" `
#     -Lista ferramentas\prints\<seu-nome>.ps1 `
#     -Codigo 04.06            # opcional: gera só os prints desse manual
# Cada pessoa tem a própria lista em ferramentas\prints\ (andre.ps1, dionatan.ps1),
# para que duas pessoas trabalhando ao mesmo tempo não editem o mesmo arquivo.
# Cada item da lista:
#   @('<código>', '<arquivo.png>', '<id do print>', @(quadrados), @(tarjas), @(recorte))
# id do print: 'chrome:<id>' para prints do Claude in Chrome; só '<id>' para o navegador interno.
# Quadrado, tarja e recorte = @(x, y, largura, altura), em pixels do print original.
# Um único quadrado ou tarja precisa da vírgula: @(,@(x, y, l, a)).
# Tarja = retângulo cinza sólido (dados reais: nomes, CNPJ, IE, CSC, e-mail). Desfoque não serve.
param([string]$SrcDir, [string]$OutRoot, [string]$Lista, [string]$Codigo)
Add-Type -AssemblyName System.Drawing
$p = 'mcp-Claude_Browser-blob-'
if (-not $Lista -or -not (Test-Path $Lista)) { throw "Informe -Lista com o arquivo da sua lista (ex.: ferramentas\prints\andre.ps1)." }
. (Resolve-Path $Lista)
if ($Codigo) { $shots = @($shots | Where-Object { $_[0] -eq $Codigo }) }
if ($shots.Count -eq 0) { Write-Warning "Nenhum print na lista para gerar."; return }
$pen = New-Object System.Drawing.Pen ([System.Drawing.Color]::FromArgb(230, 220, 38, 38)), 3
foreach ($s in $shots) {
  # Prints do Chrome (Claude in Chrome) vêm com outro prefixo: id 'chrome:<id>'.
  # Captura ampliada (zoom) do Chrome sai em .png; screenshot comum, em .jpg.
  if ($s[2] -like 'chrome:*') {
    $src = Join-Path $SrcDir ('mcp-claude-in-chrome-blob-' + $s[2].Substring(7) + '.jpg')
    if (-not (Test-Path $src)) { $src = [IO.Path]::ChangeExtension($src, '.png') }
  }
  else { $src = Join-Path $SrcDir "$p$($s[2]).jpg" }
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
  # 6º item opcional: recorte @(x, y, l, a), nas mesmas coordenadas do print.
  if ($s.Count -gt 5 -and $s[5]) {
    $c = $s[5]; $crop = $bmp.Clone((New-Object System.Drawing.Rectangle $c[0], $c[1], $c[2], $c[3]), $bmp.PixelFormat)
    $crop.Save((Join-Path $outDir $s[1]), [System.Drawing.Imaging.ImageFormat]::Png); $crop.Dispose()
  } else { $bmp.Save((Join-Path $outDir $s[1]), [System.Drawing.Imaging.ImageFormat]::Png) }
  $g.Dispose(); $bmp.Dispose(); $img.Dispose(); $s[1]
}
