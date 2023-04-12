import sqlite3
import xml.etree.ElementTree as ET

# Abrir la conexión a la base de datos
conn = sqlite3.connect('Partidos.db')
c = conn.cursor()

# Crear la tabla "partidos" si no existe
c.execute('''CREATE TABLE IF NOT EXISTS partidos
             (idPartido TEXT, temporada TEXT, division TEXT, jornada TEXT,
              EquipoLocal TEXT, EquipoVisitante TEXT, golesLocal TEXT, golesVisitante TEXT,
              fecha TEXT, timestamp TEXT)''')

# Cargar el archivo XML y obtener la raíz
tree = ET.parse('partidos.xml')
root = tree.getroot()

# Recorrer cada partido y agregarlo a la tabla
for partido in root.findall('partido'):
    idPartido = partido.get('idPartido')
    temporada = partido.get('temporada')
    division = partido.get('division')
    jornada = partido.get('jornada')
    EquipoLocal = partido.get('EquipoLocal')
    EquipoVisitante = partido.get('EquipoVisitante')
    golesLocal = partido.get('golesLocal')
    golesVisitante = partido.get('golesVisitante')
    fecha = partido.get('fecha')
    timestamp = partido.get('timestamp')
    c.execute("INSERT INTO partidos VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
              (idPartido, temporada, division, jornada, EquipoLocal, EquipoVisitante,
               golesLocal, golesVisitante, fecha, timestamp))

# Guardar los cambios y cerrar la conexión a la base de datos
conn.commit()
conn.close()
