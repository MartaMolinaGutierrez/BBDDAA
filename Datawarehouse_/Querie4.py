import pandas as pd
import sqlite3

conn = sqlite3.connect('Students.db')
c = conn.cursor()

df1 = pd.read_sql_query("""
    SELECT Personal_Data.Gender, ((AVG(Studies_Data.First_sem_grades) + AVG(Studies_Data.Second_sem_grades))/2) AS Media_primer_anio_mujeres
    FROM Studies_Data
    INNER JOIN Personal_Data ON Studies_Data.Studies_Data_id = Personal_Data.Personal_Data_id
    WHERE Personal_Data.Gender='0'
    GROUP BY Personal_Data.Gender
""", conn)

df2 = pd.read_sql_query("""
    SELECT Personal_Data.Gender, ((AVG(Studies_Data.First_sem_grades) + AVG(Studies_Data.Second_sem_grades))/2) AS Media_primer_anio_hombres
    FROM Studies_Data
    INNER JOIN Personal_Data ON Studies_Data.Studies_Data_id = Personal_Data.Personal_Data_id
    WHERE Personal_Data.Gender='1'
    GROUP BY Personal_Data.Gender
""", conn)

conn.close()

print('Media de las mujeres en el primer año del grado: \n')
print(df1)
print('------------------------------------------------------------------------------\n')
print('Media de los hombres en el primer año del grado: \n')
print(df2)