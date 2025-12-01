import mysql.connector

conn=mysql.connector.connect(host="localhost",user="root",password="12345",database="student")

cursor=conn.cursor()

# cursor.execute("SELECT * FROM actordetails")
# data=cursor.fetchall()
# print(data)

# cursor.execute("insert into contacts (name,phone) values (%s,%s)", ("Naveen",638667755))
# conn.commit()

cursor.execute("DELETE FROM contacts WHERE id= %s", (5,))
conn.commit()

cursor.close()
conn.close()




