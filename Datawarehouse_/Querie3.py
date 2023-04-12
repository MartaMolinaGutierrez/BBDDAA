import pandas as pd
import sqlite3

conn = sqlite3.connect('Students.db')
c = conn.cursor()

df1 = pd.read_sql_query('''SELECT AVG(Country_Context.Unemployment_rate) AS Tasa_de_desempleo
                          FROM Country_Context
                          INNER JOIN Students_Fact ON Country_Context.Country_Context_id = Students_Fact.Students_id
                          WHERE Students_Fact.Target = "Dropout"
                       ''', conn)

df2 = pd.read_sql_query('''SELECT AVG(Country_Context.Unemployment_rate) AS Tasa_de_desempleo
                          FROM Country_Context
                          INNER JOIN Students_Fact ON Country_Context.Country_Context_id = Students_Fact.Students_id
                          WHERE Students_Fact.Target = "Graduate"
                       ''', conn)   

conn.close()

print('Tasa de desempleo media del país en alumnos que abandonan los estudios: \n')
print(df1)
print('------------------------------------------------------------------------------\n')
print('Tasa de desempleo media del país en alumnos que se graduan: \n')
print(df2)

''' Para nada xD '''