import xml.etree.ElementTree as etree

with open('categoriaegorias.xml', 'w', encoding='utf-8') as archivo:
    archivo.write("<?xml version='1.0' encoding='UTF-8'?>\n")
    archivo.write("<ystfeed>\n")

    for _, elemento in etree.iterparse('C:/Users/03957712/Downloads/FullOct2007.xml'):
        if elemento.tag == 'document':
            categoria = elemento.find('maincat')
            print(etree.tostring(elemento))

            if categoria is not None and categoria.text in ['Health', 'Entertainment &amp; Music', 'Pregnancy &amp; Parenting']:
                archivo.write("<vespaadd>")
                archivo.write(etree.tostring(elemento, encoding='unicode'))
                archivo.write("</vespaadd>\n")
            elemento.clear()

    archivo.write("</ystfeed>")
