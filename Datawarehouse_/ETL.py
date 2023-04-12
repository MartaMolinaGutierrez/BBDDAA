import sqlite3

conn = sqlite3.connect('Students.db')
c = conn.cursor()

''' CREACIÓN DE TABLAS '''

c.execute('''CREATE TABLE Students_Fact (
                Students_id INTEGER PRIMARY KEY AUTOINCREMENT,
                Personal_Data_id INTEGER,
                Studies_Data_id INTEGER,
                Economical_Situation_id INTEGER,
                Family_Context_id INTEGER,
                Country_Context_id INTEGER,
                Target TEXT
             )''')

conn.commit()

c.execute('''CREATE TABLE Personal_Data (
                Personal_Data_id INTEGER PRIMARY KEY AUTOINCREMENT,
                Marital_state VARCHAR(2),
                Nacionality VARCHAR(2),
                Gender VARCHAR(2),
                Internacional VARCHAR(2),
                Displaced VARCHAR(2),
                Educational_special_needs VARCHAR(2),
                FOREIGN KEY (Personal_Data_id) REFERENCES Students_Fact(Personal_Data_id)
             )''')

conn.commit()

c.execute('''CREATE TABLE Studies_Data (
                Studies_Data_id INTEGER PRIMARY KEY AUTOINCREMENT,
                Course VARCHAR(2),
                Attendance VARCHAR(2),
                Previous_qualification TEXT,
                Age_at_enrollment VARCHAR(2),
                First_sem_grades TEXT,
                Second_sem_grades TEXT,
                FOREIGN KEY (Studies_Data_id) REFERENCES Students_Fact(Studies_Data_id)
             )''')

conn.commit()

c.execute('''CREATE TABLE Economical_Situation (
                Economical_Situation_id INTEGER PRIMARY KEY AUTOINCREMENT,
                Debtor VARCHAR(2),
                Tuition_fees_up_to_date VARCHAR(2),
                Scholarship_holder VARCHAR(2),
                FOREIGN KEY (Economical_Situation_id) REFERENCES Students_Fact(Economical_Situation_id)
             )''')

conn.commit()

c.execute('''CREATE TABLE Family_Context (
                Family_Context_id INTEGER PRIMARY KEY AUTOINCREMENT,
                Mothers_qualification VARCHAR(2),
                Fathers_qualification VARCHAR(2),
                Mothers_occupation VARCHAR(2),
                Fathers_occupation VARCHAR(2),
                FOREIGN KEY (Family_Context_id) REFERENCES Students_Fact(Family_Context_id)
             )''')

conn.commit()

c.execute('''CREATE TABLE Country_Context (
                Country_Context_id INTEGER PRIMARY KEY AUTOINCREMENT,
                Inflation_rate TEXT,
                GDP TEXT,
                Unemployment_rate TEXT,
                FOREIGN KEY (Country_Context_id) REFERENCES Students_Fact(Country_Context_id)
             )''')

conn.commit()

''' CARGA Y TRANSFORMACIÓN DE LOS DATOS '''

c.execute('''INSERT INTO Personal_Data (
                Marital_state,
                Nacionality,
                Gender,
                Internacional,
                Displaced,
                Educational_special_needs
             )
             SELECT 
                Marital_status,
                Nacionality,
                Gender,
                International,
                Displaced,
                Educational_special_needs
             FROM StudentsData''')

conn.commit()

c.execute('''INSERT INTO Studies_Data (
                Course,
                Attendance,
                Previous_qualification,
                Age_at_enrollment,
                First_sem_grades,
                Second_sem_grades
             )
             SELECT 
                Course,
                Attendance,
                Previous_qualification,
                Age_at_enrollment,
                first_sem_grades,
                second_sem_grades
             FROM StudentsData''')

conn.commit()

c.execute('''INSERT INTO Economical_Situation (
                Debtor,
                Tuition_fees_up_to_date,
                Scholarship_holder
             )
             SELECT 
                Debtor,
                Tuition_fees_up_to_date,
                Scholarship_holder
             FROM StudentsData''')

conn.commit()

c.execute('''INSERT INTO Family_Context (
                Mothers_qualification,
                Fathers_qualification,
                Mothers_occupation,
                Fathers_occupation
             )
             SELECT 
                Mothers_qualification,
                Fathers_qualification,
                Mothers_occupation,
                Fathers_occupation
             FROM StudentsData''')

conn.commit()

c.execute('''INSERT INTO Country_Context (
                Inflation_rate,
                GDP,
                Unemployment_rate
             )
             SELECT
                Inflation_rate,
                GDP,
                Unemployment_rate
             FROM StudentsData''')

conn.commit()

c.execute('''INSERT INTO Students_Fact (
                Personal_Data_id,
                Studies_Data_id,
                Economical_Situation_id,
                Family_Context_id,
                Country_Context_id
             )
             SELECT DISTINCT
                Personal_Data.Personal_Data_id,
                Studies_Data.Studies_Data_id,
                Economical_Situation.Economical_Situation_id,
                Family_Context.Family_Context_id,
                Country_Context.Country_Context_id
             FROM Personal_Data 
               INNER JOIN Studies_Data
               ON Personal_Data.Personal_Data_id = Studies_Data.Studies_Data_id
               INNER JOIN Economical_Situation
               ON Personal_Data.Personal_Data_id = Economical_Situation.Economical_Situation_id
               INNER JOIN Family_Context
               ON Personal_Data.Personal_Data_id = Family_Context.Family_Context_id
               INNER JOIN Country_Context
               ON Personal_Data.Personal_Data_id = Country_Context.Country_Context_id
             ''')

conn.commit()

c.execute('''INSERT INTO Students_Fact (
                Target
             )
             SELECT Target
             FROM StudentsData
             ''')

conn.commit()

conn.close()


