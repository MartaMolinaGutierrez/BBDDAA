import sqlite3
import xml.etree.ElementTree as ET

# Conexión a la base de datos
conn = sqlite3.connect('C:/sdk/Sqlite/prueba.db')
cursor = conn.cursor()

# Consulta para obtener el equipo que más goles ha metido en una temporada y su cantidad de goles
consulta_max_goles = '''SELECT temporada, nombre_equipo, MAX(total_goles) FROM 
                       (SELECT temporada, EquipoLocal AS nombre_equipo, SUM(golesLocal) AS total_goles 
                        FROM partidos GROUP BY temporada, EquipoLocal 
                        UNION ALL 
                        SELECT temporada, EquipoVisitante AS nombre_equipo, SUM(golesVisitante) AS total_goles 
                        FROM partidos GROUP BY temporada, EquipoVisitante) 
                       GROUP BY temporada'''

# Ejecución de la consulta
cursor.execute(consulta_max_goles)

# Creación del elemento raíz del XML
root = ET.Element("resultados")

# Iteración sobre los resultados y creación de elementos en el XML
for temporada, equipo, goles in cursor.fetchall():
    resultado = ET.SubElement(root, "resultado")
    resultado.set("equipo", equipo)
    resultado.set("temporada", temporada)
    resultado.set("goles", str(goles))

# Consulta para obtener el equipo que menos goles ha metido en una temporada y su cantidad de goles
consulta_min_goles = '''SELECT temporada, nombre_equipo, MIN(total_goles) FROM 
                       (SELECT temporada, EquipoLocal AS nombre_equipo, SUM(golesLocal) AS total_goles 
                        FROM partidos GROUP BY temporada, EquipoLocal 
                        UNION ALL 
                        SELECT temporada, EquipoVisitante AS nombre_equipo, SUM(golesVisitante) AS total_goles 
                        FROM partidos GROUP BY temporada, EquipoVisitante) 
                       GROUP BY temporada'''

# Ejecución de la consulta
cursor.execute(consulta_min_goles)

# Iteración sobre los resultados y creación de elementos en el XML
for temporada, equipo, goles in cursor.fetchall():
    resultado = ET.SubElement(root, "resultado")
    resultado.set("equipo", equipo)
    resultado.set("temporada", temporada)
    resultado.set("goles", str(goles))

# Guardado del XML
tree = ET.ElementTree(root)
tree.write("resultados.xml")

# Cierre de la conexión a la base de datos
conn.close()
