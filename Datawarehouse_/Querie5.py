import pandas as pd
import sqlite3

conn = sqlite3.connect('Students.db')
c = conn.cursor()

df1 = pd.read_sql_query("""
                        SELECT COUNT(*) * 1.0 / (
                            SELECT COUNT(*)
                            FROM Economical_situation
                            WHERE Economical_situation.Scholarship_holder = '1' AND Economical_situation.Debtor = '1'
                        ) AS Probabilidad_graduados_beca_endeudados
                        FROM Economical_situation
                        INNER JOIN Students_Fact ON Economical_situation.Economical_situation_id = Students_Fact.Economical_situation_id
                        WHERE Students_Fact.Target = 'Graduate' AND Economical_situation.Scholarship_holder = '1' AND Economical_situation.Debtor = '1';
                        """, conn)

'''quiero saber la probabilidad de que un estudiante endeudado y becado se gradue'''

df2 = pd.read_sql_query("""
                        SELECT COUNT(*) * 1.0 / (
                            SELECT COUNT(*)
                            FROM Economical_situation
                            WHERE Economical_situation.Scholarship_holder = '0' AND Economical_situation.Debtor = '1'
                        ) AS Probabilidad_graduados_beca_endeudados
                        FROM Economical_situation
                        INNER JOIN Students_Fact ON Economical_situation.Economical_situation_id = Students_Fact.Economical_situation_id
                        WHERE Students_Fact.Target = 'Graduate' AND Economical_situation.Scholarship_holder = '0' AND Economical_situation.Debtor = '1';
                        """, conn)
'''quiero saber la probabilidad de que un estudiante endeudado y no becado se gradue'''

conn.close()

print('Probabilidad de que una persona con deudas se gradue si recibe una beca: \n')
print(df1)
print('------------------------------------------------------------------------------\n')
print('Probabilidad de que una persona con deudas se gradue si NO recibe una beca: \n')
print(df2)

