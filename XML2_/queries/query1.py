import sqlite3

# Conectarse a la base de datos SQLite
conn = sqlite3.connect('C:/sdk/Sqlite/prueba.db')
c = conn.cursor()

# Realizar la consulta SQL
query = "SELECT golesLocal, golesVisitante, EquipoLocal, EquipoVisitante FROM partidos WHERE temporada = '1973-74' AND (EquipoLocal = 'Real Madrid' OR EquipoVisitante = 'Real Madrid' OR EquipoLocal = 'Barcelona' OR EquipoVisitante = 'Barcelona')"
c.execute(query)

# Recorrer los resultados y sumar los goles del Real Madrid y del Barcelona
goles_real_madrid = 0
goles_barcelona = 0
for row in c.fetchall():
    goles_local = int(row[0])
    goles_visitante = int(row[1])
    equipo_local = row[2]
    equipo_visitante = row[3]

    if equipo_local == 'Real Madrid':
        goles_real_madrid += goles_local
        goles_barcelona += goles_visitante
    elif equipo_visitante == 'Real Madrid':
        goles_real_madrid += goles_visitante
        goles_barcelona += goles_local

# Imprimir los resultados
print('Goles del Real Madrid en la temporada 1973-74:', goles_real_madrid)
print('Goles del Barcelona en la temporada 1973-74:', goles_barcelona)

# Cerrar la conexión a la base de datos
conn.close()
