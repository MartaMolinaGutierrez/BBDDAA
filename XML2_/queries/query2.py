import sqlite3
import xml.etree.ElementTree as ET

# Conectamos a la base de datos
conn = sqlite3.connect('C:/sdk/Sqlite/prueba.db')
cursor = conn.cursor()

# Obtener la lista de temporadas
cursor.execute("SELECT DISTINCT temporada FROM partidos")
temporadas = cursor.fetchall()

# Crear el elemento raíz del árbol XML
partidos = ET.Element("partidos")

# Para cada temporada
for temporada in temporadas:
    temporada_node = ET.SubElement(partidos, "temporada")
    temporada_node.set("nombre", temporada[0])

    # Obtener los goles del Real Madrid y del Barcelona
    cursor.execute("SELECT SUM(golesLocal) FROM partidos WHERE temporada=? AND EquipoLocal=?",
                   (temporada[0], "Real Madrid"))
    real_madrid_goles_local = cursor.fetchone()[0] or 0

    cursor.execute("SELECT SUM(golesVisitante) FROM partidos WHERE temporada=? AND EquipoVisitante=?",
                   (temporada[0], "Real Madrid"))
    real_madrid_goles_visitante = cursor.fetchone()[0] or 0

    cursor.execute("SELECT SUM(golesLocal) FROM partidos WHERE temporada=? AND EquipoLocal=?",
                   (temporada[0], "Barcelona"))
    barcelona_goles_local = cursor.fetchone()[0] or 0

    cursor.execute("SELECT SUM(golesVisitante) FROM partidos WHERE temporada=? AND EquipoVisitante=?",
                   (temporada[0], "Barcelona"))
    barcelona_goles_visitante = cursor.fetchone()[0] or 0

    # Crear los elementos para los goles del Real Madrid y del Barcelona
    real_madrid_node = ET.SubElement(temporada_node, "equipo")
    real_madrid_node.set("nombre", "Real Madrid")
    real_madrid_node.set("golesLocal", str(real_madrid_goles_local))
    real_madrid_node.set("golesVisitante", str(real_madrid_goles_visitante))

    barcelona_node = ET.SubElement(temporada_node, "equipo")
    barcelona_node.set("nombre", "Barcelona")
    barcelona_node.set("golesLocal", str(barcelona_goles_local))
    barcelona_node.set("golesVisitante", str(barcelona_goles_visitante))

# Guardar el archivo XML
tree = ET.ElementTree(partidos)
tree.write("goles.xml", encoding="utf-8", xml_declaration=True)
