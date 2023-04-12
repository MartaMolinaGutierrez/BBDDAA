import pandas as pd
import sqlite3

conn = sqlite3.connect('Students.db')
c = conn.cursor()

df = pd.read_sql_query('''SELECT Studies_Data.Attendance, Personal_Data.Gender, Studies_Data.Age_at_enrollment, Personal_Data.Internacional, Personal_Data.Displaced, Family_Context.Mothers_occupation, Family_Context.Fathers_occupation, COUNT(*) AS cantidad
                          FROM Students_Fact
                           INNER JOIN Studies_Data
                           ON Students_Fact.Studies_Data_id = Studies_Data.Studies_Data_id
                           INNER JOIN Family_Context
                           ON Students_Fact.Family_Context_id = Family_Context.Family_Context_id
                           INNER JOIN Personal_Data
                           ON Students_Fact.Personal_Data_id = Personal_Data.Personal_Data_id
                          WHERE Students_Fact.Target = 'Dropout'
                          GROUP BY Studies_Data.Attendance, Personal_Data.Gender, Studies_Data.Age_at_enrollment, Personal_Data.Internacional, Personal_Data.Displaced, Family_Context.Mothers_occupation, Family_Context.Fathers_occupation
                          ORDER BY cantidad DESC
                          LIMIT 10
                       ''', conn)

conn.close()

print(df)