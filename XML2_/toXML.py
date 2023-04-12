import xml.etree.ElementTree as ET

partidos = ET.Element('partidos')

with open('FootballMatchesDataSet\DataSetPartidos.txt') as f:
    for line in f:
        partido = ET.SubElement(partidos, 'partido')
        (idPartido, temporada, division, jornada, EquipoLocal,
         EquipoVisitante, golesLocal, golesVisitante, fecha, timestamp) = line.strip().split('::')
        partido.set('idPartido', idPartido)
        partido.set('temporada', temporada)
        partido.set('division', division)
        partido.set('jornada', jornada)
        partido.set('EquipoLocal', EquipoLocal)
        partido.set('EquipoVisitante', EquipoVisitante)
        partido.set('golesLocal', golesLocal)
        partido.set('golesVisitante', golesVisitante)
        partido.set('fecha', fecha)
        partido.set('timestamp', timestamp)

tree = ET.ElementTree(partidos)
tree.write('partidos.xml', encoding='utf-8', xml_declaration=True)
