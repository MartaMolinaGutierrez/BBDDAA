import sqlite3
import xml.etree.ElementTree as ET

# Conectarse a la base de datos
conn = sqlite3.connect('C:/sdk/Sqlite/prueba.db')

# Crear cursor
c = conn.cursor()

# Consultar los goles de cada equipo como local y visitante
c.execute('SELECT EquipoLocal, SUM(golesLocal) FROM partidos GROUP BY EquipoLocal')
goles_local = dict(c.fetchall())
c.execute('SELECT EquipoVisitante, SUM(golesVisitante) FROM partidos GROUP BY EquipoVisitante')
goles_visitante = dict(c.fetchall())

# Encontrar equipos que han metido más goles como visitante que como local
equipos_visitante = [equipo for equipo in goles_visitante.keys() if equipo in goles_local.keys() and goles_visitante[equipo] > goles_local[equipo]]

# Crear el elemento raíz del archivo XML
root = ET.Element('resultados')

# Crear elementos y añadirlos al árbol si hay equipos visitantes
if len(equipos_visitante) > 0:
    for equipo in equipos_visitante:
        resultado = ET.SubElement(root, 'resultado')
        resultado.set('equipo', equipo)
        resultado.set('visitante', 'si')
else:
    resultado = ET.SubElement(root, 'resultado')
    resultado.set('equipo', 'No hay equipos que hayan metido más goles como visitante que como local')
    
# Escribir el archivo XML
tree = ET.ElementTree(root)
tree.write('equipos_visitante.xml')

# Mostrar resultados
if len(equipos_visitante) > 0:
    print('Los siguientes equipos han metido más goles como visitante que como local:')
    for equipo in equipos_visitante:
        print(f'- {equipo}')
else:
    print('No hay equipos que hayan metido más goles como visitante que como local')

# Cerrar conexión
conn.close()
