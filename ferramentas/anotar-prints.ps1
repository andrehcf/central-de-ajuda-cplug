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
  @('05.12', '01-devolver-menu.png', 'chrome:1793444462026-2mdfkj', @(@(538, 638, 26, 22), @(1090, 791, 166, 22)), @(), @(250, 50, 1038, 902)),
  @('05.12', '02-janela-devolver.png', 'chrome:1793444488086-g9a5qw', @(@(334, 433, 620, 26), @(334, 501, 148, 28), @(821, 548, 134, 30)), @(), @(310, 350, 668, 250)),
  @('05.12', '03-formulario-devolucao.png', 'chrome:1793444560775-nhhy8t', @(@(312, 312, 756, 50), @(312, 438, 678, 46)), @(@(671, 336, 90, 17), @(396, 626, 98, 16)), @(255, 60, 1000, 600)),
  @('05.12', '04-itens-devolucao.png', 'chrome:1793444604713-xmrghj', @(@(470, 559, 750, 28), @(315, 508, 600, 28)), @(), @(255, 355, 1000, 440)),
  @('05.12', '05-pagamento-devolucao.png', 'chrome:1793444618378-up12ac', @(,@(312, 388, 910, 30)), @(), @(255, 300, 1000, 210)),
  @('05.12', '06-salvar-devolucao.png', 'chrome:1793444632055-iw9dhw', @(,@(325, 806, 182, 38)), @(), @(255, 440, 1000, 430)),
  @('05.12', '07-devolucao-transmitir.png', 'chrome:1793444688862-0pegdb', @(@(359, 103, 127, 25), @(1089, 395, 60, 22), @(1090, 427, 166, 22)), @(), @(250, 50, 1038, 650)),
  @('05.12', '08-devolucao-transmitida.png', 'chrome:1793444708796-x0g185', @(,@(1089, 394, 70, 72)), @(), @(250, 50, 1038, 450)),
  @('05.06', '17-operacao-interestadual.png', 'chrome:1793444870062-widqqi', @(@(650, 143, 192, 26), @(863, 143, 192, 26), @(437, 232, 380, 24)), @(), @(205, 90, 870, 220)),
  @('05.06', '18-difal.png', 'chrome:1793444870062-pe7d73', @(@(294, 264, 406, 28), @(221, 393, 836, 152)), @(), @(205, 240, 870, 320)),
  @('04.01', '05-lotes.png', '1793440641846-toei02', @(,@(380, 97, 411, 42)), @()),
  @('04.01', '06-composicao-saida.png', '1793440734223-d01umh', @(@(195, 254, 410, 42), @(486, 302, 116, 30)), @()),
  @('04.01', '07-custo-medio.png', '1793440803851-dx0isg', @(@(595, 124, 98, 22), @(497, 190, 295, 64)), @()),
  @('03.08', '08-cest-depois-do-ncm.png', '1793430438002-08tfim', @(@(344, 112, 212, 20), @(566, 172, 212, 150)), @()),
  @('03.07', '08-custo-por-linha.png', '1793429394194-f4xmnx', @(@(546, 265, 44, 22), @(600, 265, 72, 22), @(680, 267, 40, 18), @(186, 451, 142, 20)), @()),
  @('03.07', '09-aplicar-preco.png', '1793429467123-opqrgc', @(,@(243, 228, 314, 89)), @()),
  @('03.07', '10-aba-producao.png', '1793429523589-uhplbx', @(@(210, 105, 46, 17), @(566, 150, 102, 17), @(704, 42, 86, 22)), @()),
  @('03.07', '11-filtro.png', '1793429546566-ykl1kz', @(,@(624, 42, 170, 102)), @()),
  @('03.07', '12-ordenar.png', '1793429568621-wry05t', @(@(762, 73, 22, 20), @(693, 96, 100, 96)), @()),
  @('03.07', '13-insumo-producoes.png', '1793429602385-5qyuc9', @(@(238, 80, 50, 17), @(690, 151, 84, 17)), @()),
  @('03.05', '08-formatos.png', '1793418418404-yz7cy8', @(@(343, 142, 437, 48), @(343, 197, 437, 48)), @()),
  @('03.05', '09-grade-detalhe.png', '1793418531106-m4t7ry', @(@(408, 143, 30, 13), @(703, 156, 74, 13), @(374, 204, 14, 72), @(550, 202, 200, 76)), @()),
  @('03.05', '10-gerar-codigos.png', '1793418545215-q4komd', @(@(494, 66, 196, 22), @(708, 150, 78, 86), @(739, 518, 54, 20)), @()),
  @('03.05', '11-valor-composto.png', '1793418476751-stpmkh', @(@(350, 230, 424, 34), @(350, 286, 424, 56), @(600, 348, 144, 102)), @()),
  @('03.04', '07-dados-completos.png', '1793418313133-3vkyy3', @(@(606, 164, 58, 14), @(342, 219, 156, 18), @(505, 262, 80, 18), @(342, 298, 324, 44), @(670, 364, 92, 22), @(680, 473, 90, 22)), @()),
  @('03.04', '08-calculo-custo.png', '1793406226319-5gbha4', @(@(536, 72, 128, 20), @(667, 72, 128, 20), @(710, 107, 85, 18), @(758, 521, 36, 18)), @()),
  @('03.04', '09-canais-fornecedores.png', '1793406370800-mw69j6', @(@(738, 266, 36, 16), @(320, 286, 124, 100), @(320, 438, 454, 28)), @()),
  @('03.04', '10-estoque.png', '1793406332537-rpo43x', @(@(322, 110, 462, 32), @(322, 148, 462, 32), @(322, 182, 462, 32)), @()),
  @('03.04', '11-tipo-colecao.png', '1793406178392-lm5ruy', @(@(206, 69, 34, 15), @(322, 106, 462, 72)), @()),
  @('03.03', '02b-campos-da-opcao.png', '1793405781716-tcwr89', @(@(449, 113, 45, 45), @(682, 115, 83, 18), @(507, 138, 260, 18), @(434, 128, 12, 14)), @()),
  @('03.03', '03b-calculo-detalhe.png', '1793405825618-i90eny', @(@(434, 116, 240, 20), @(434, 152, 212, 50), @(434, 242, 135, 18), @(434, 263, 200, 12)), @()),
  @('03.01', '04-subcategoria.png', '1793405478758-00qa3k', @(@(488, 245, 18, 18), @(158, 273, 632, 26)), @()),
  @('03.01', '05-ordenacao.png', '1793405512507-wujci0', @(@(218, 61, 44, 15), @(155, 165, 260, 42)), @()),
  @('03.01', '06-inativar.png', '1793405545450-nrqzyz', @(,@(270, 246, 260, 50)), @()),
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
  # Prints do Chrome (Claude in Chrome) vêm com outro prefixo: id 'chrome:<id>'.
  if ($s[2] -like 'chrome:*') { $src = Join-Path $SrcDir ('mcp-claude-in-chrome-blob-' + $s[2].Substring(7) + '.jpg') }
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
