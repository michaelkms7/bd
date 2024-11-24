#from flask import Flask
import psycopg2
from psycopg2 import Error

#app = Flask(__name__)
#def test();
#     return f"TEST!"
print("Старт приложения")
def dbwork(conn, action, param:int=0) :
# выборка данных из базы
  cur = conn.cursor()
  if action == 1:
     remark = "\nСписок танков"
     cur.execute("SELECT id_tank, tank_name from tank;")
  elif action == 2:
     remark = "\nСписок оружия"
     cur.execute("SELECT id_weap, weap_name from weap;")    
  elif action == 3:
     remark = "\nСписок боеприпасов"
     cur.execute("SELECT id_bp, bp_name, bp_type from bp;")  
  elif action == 4:
     remark = "\nСписок оружия танка: "
     cur.execute("select t.tank_name, w.weap_name from tank t, weap w, tank_weap tw where t.id_tank=tw.id_tank and w.id_weap=tw.id_weap and t.id_tank=%s;", (param,))
  elif action == 5:
     remark = "\nСписок боекомплекта танка: "
     cur.execute("select t.tank_name, b.bp_name from tank t, bp b, tank_bp tb where t.id_tank=tb.id_tank and b.id_bp=tb.id_bp and t.id_tank=%s;", (param,))
  elif action == 6:
     remark = "\nХарактеристики танка: "
     cur.execute("select t.tank_name, c.chars_name, c.chars_valume from tank t, chars c where t.id_tank=c.id_tank and t.id_tank=%s;", (param,))
  res = cur.fetchall()
  print(remark, *res, sep = "\n")
  print ("---------------------------------------------")
  # db_version = cur.fetchone()
  cur.close() 

try:
    conn = psycopg2.connect( dbname="tanks", user="tankuser", password="pgpwd", host="localhost", port="5432" )
    # вывод списка
    print ("Запрос информации")
    print ("---------------------------------------------")
    print ("Список танков - введите              1")
    print ("Список оружия - введите              2")
    print ("Список боеприпасов - введите         3")
    print ("Список оружия танков - введите       4")
    print ("Список боекомплекта танка - введите  5")
    print ("Характеристики танка - введите       6")
    print ("Выйти - введите                 0\n")
    print ("---------------------------------------------")
 
#цикл с запросом ввода номера из списка
    while True:
        try:
            res_input = int(input("Введите номер от 1 до 4 из списка выше или 0 для выхода: "))
        except ValueError:
                # Цикл будет повторяться до правильного ввода
                print("Введите число: ")
        except EOFError:
                print("\nОбработка ошибки конца файла") 
        if res_input == 4 or res_input == 5 or res_input == 6:
            try:
                param_input = int(input("Введите номер танка:"))
            except ValueError:
                # Цикл будет повторяться до правильного ввода
                print("Введите число")
            dbwork (conn, res_input, param_input)
        elif res_input == 0:
            break
        else:
            if res_input > 0 and res_input < 7: 
                dbwork (conn, res_input) 

except (Exception, Error) as error:
    print("\nОшибка при работе с PostgreSQL - ", error)
finally:
    if conn:
         conn.close()
        
