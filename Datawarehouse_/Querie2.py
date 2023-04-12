import pandas as pd
import sqlite3

conn = sqlite3.connect('Students.db')
c = conn.cursor()

print('Personas cuyo padre o madre NO tiene estudios superiores y son sociables: \n')

df = pd.read_sql_query('''SELECT COUNT(*) * 1.0 / (
                           SELECT COUNT(*)
                           FROM Personal_Data
                           ) AS Porcentaje_sociables
                          FROM Personal_Data
                           INNER JOIN Family_Context ON Personal_Data.Personal_Data_id = Family_Context.Family_Context_id
                          WHERE Personal_Data.Displaced = '1' AND ((Family_Context.Mothers_qualification != '2' AND Family_Context.Mothers_qualification != '3' AND Family_Context.Mothers_qualification != '4' AND Family_Context.Mothers_qualification != '5' AND Family_Context.Mothers_qualification != '6' AND Family_Context.Mothers_qualification != '30' AND Family_Context.Mothers_qualification != '31' AND Family_Context.Mothers_qualification != '32' AND Family_Context.Mothers_qualification != '33' AND Family_Context.Mothers_qualification != '34') OR (Family_Context.Fathers_qualification != '2' AND Family_Context.Fathers_qualification != '3' AND Family_Context.Fathers_qualification != '4' AND Family_Context.Fathers_qualification != '5' AND Family_Context.Fathers_qualification != '6' AND Family_Context.Fathers_qualification != '30' AND Family_Context.Fathers_qualification != '31' AND Family_Context.Fathers_qualification != '32' AND Family_Context.Fathers_qualification != '33' AND Family_Context.Fathers_qualification != '34'))
                          GROUP BY Personal_Data.Displaced
                       ''', conn)

print(df)

print('------------------------------------------------------------------------------\n')
print('Personas cuyo padre o madre NO tiene estudios superiores y NO son sociables: \n')

df = pd.read_sql_query('''SELECT COUNT(*) * 1.0 / (
                           SELECT COUNT(*)
                           FROM Personal_Data
                           ) AS Porcentaje_NO_sociables
                          FROM Personal_Data
                           INNER JOIN Family_Context ON Personal_Data.Personal_Data_id = Family_Context.Family_Context_id
                          WHERE Personal_Data.Displaced = '0' AND ((Family_Context.Mothers_qualification != '2' AND Family_Context.Mothers_qualification != '3' AND Family_Context.Mothers_qualification != '4' AND Family_Context.Mothers_qualification != '5' AND Family_Context.Mothers_qualification != '6' AND Family_Context.Mothers_qualification != '30' AND Family_Context.Mothers_qualification != '31' AND Family_Context.Mothers_qualification != '32' AND Family_Context.Mothers_qualification != '33' AND Family_Context.Mothers_qualification != '34') OR (Family_Context.Fathers_qualification != '2' AND Family_Context.Fathers_qualification != '3' AND Family_Context.Fathers_qualification != '4' AND Family_Context.Fathers_qualification != '5' AND Family_Context.Fathers_qualification != '6' AND Family_Context.Fathers_qualification != '30' AND Family_Context.Fathers_qualification != '31' AND Family_Context.Fathers_qualification != '32' AND Family_Context.Fathers_qualification != '33' AND Family_Context.Fathers_qualification != '34'))
                          GROUP BY Personal_Data.Displaced
                       ''', conn)

conn.close()

print(df)