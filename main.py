import psycopg2

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
            for row in cur:
                print(row)

            print('\n\n2th query - Age of riders(sorted)')
            cur.execute(q_2)
            for row in cur:
                print(row)

            print('\n\n3th query - Riders over 25 years old')
            cur.execute(q_3)
            for row in cur:
                print(row)
    except:
        print('Something wrong with your query / database / tables')
    
except:
    print('\
You made a mistake somewhere among these parameters: \n\
username, password, database, host, port.\n\
Please, change it')