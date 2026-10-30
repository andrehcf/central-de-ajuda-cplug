# Mostra abas e celulas de um .xlsx sem instalar nada. Uso: python -I ferramentas/ler-xlsx.py <arquivo.xlsx>
import sys, zipfile, re, xml.etree.ElementTree as ET
ns={'m':'http://schemas.openxmlformats.org/spreadsheetml/2006/main'}
z=zipfile.ZipFile(sys.argv[1])
print(z.namelist())
ss=[]
if 'xl/sharedStrings.xml' in z.namelist():
    for si in ET.fromstring(z.read('xl/sharedStrings.xml')).findall('m:si',ns):
        ss.append(''.join(t.text or '' for t in si.iter('{%s}t'%ns['m'])))
wb=ET.fromstring(z.read('xl/workbook.xml'))
print('sheets:',[s.get('name') for s in wb.find('m:sheets',ns)])
for name in sorted(n for n in z.namelist() if n.startswith('xl/worksheets/sheet')):
    print('==',name)
    root=ET.fromstring(z.read(name))
    for row in root.iter('{%s}row'%ns['m']):
        vals=[]
        for c in row.findall('m:c',ns):
            v=c.find('m:v',ns); t=c.get('t')
            if v is None:
                isel=c.find('m:is',ns); val=''.join(x.text or '' for x in isel.iter('{%s}t'%ns['m'])) if isel is not None else ''
            else:
                val=ss[int(v.text)] if t=='s' else v.text
            vals.append(f"{c.get('r')}={val}")
        print(' | '.join(vals))
dv=[n for n in z.namelist() if 'comments' in n]
for n in dv: print('COMMENTS',n, z.read(n)[:2000])
