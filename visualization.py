import psycopg2
import matplotlib.pyplot as plt
import seaborn as sns

username = 'postgres'
password = 'postgres'
database = 'Lab2'
host = 'localhost'
port = '5432'

q_1 = '''
SELECT driver_name, age
FROM drivers
'''

q_2 = '''
SELECT location, COUNT(location)
FROM races
GROUP BY location
'''

q_3 = '''
SELECT TRIM(driver_name) AS drivers, age
FROM drivers
WHERE age > 25
'''

try:
    conn=psycopg2.connect(user=username, 
                            password=password,
                            dbname=database, 
                            host=host,
                            port = port)
                            
    try:
        with conn:
            print(f'\nThe Database - {database} is connected and ready to go')
            cur = conn.cursor()

            print('\n\n1th query - Age of riders')
            cur.execute(q_1)
            periods = []
            p_count = []
            plt.xticks(rotation=10)
            for row in cur:
                periods.append(row[0])
                p_count.append(row[1])
            sns.barplot(x = periods , y = p_count)
            plt.show()

            print('\n\n2th query - Age of riders(sorted)')
            cur.execute(q_2)
            periods = []
            p_count = []
            for row in cur:
                periods.append(row[0])
                p_count.append(row[1])
            fig1, ax1 = plt.subplots()
            ax1.pie(p_count,
                    labels=periods,
                    autopct='%1.1f%%',
                    shadow=True,
                    startangle=90)
            ax1.axis('equal')
            plt.show()


            print('\n\n3th query - Riders over 25 years old')
            cur.execute(q_3)
            periods = []
            p_count = []
            plt.xticks(rotation=10)
            for row in cur:
                periods.append(row[0])
                p_count.append(row[1])
            sns.lineplot(x = periods, y = p_count)
            plt.show()
    except:
            print('Something wrong with your query / database / tables')
        
except:
    print('\
You made a mistake somewhere among these parameters: \n\
username, password, database, host, port.\n\
Please, change it')