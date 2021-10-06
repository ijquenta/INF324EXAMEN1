# -*- coding: utf-8 -*-
"""
Created on Mon Oct  4 11:07:10 2021

@author: Ivan QV
"""

from tkinter import Tk, Label, Entry, ttk, Canvas, Frame, Button #importar
import psycopg2 as pc2

#inicializacion root, instancia de tk
root = Tk() #ventana
root.title("Agregar Alumno") #titulo

#funcion guardar alumno en la base de datos
def guardar_alumno(ci, nombre, paterno, genero, correo, departamento):
    #conexion con postgres
    conexion = pc2.connect(user="postgres",
                      password="123456",
                      host="127.0.0.1",
                      port="5432",
                      database="academico324")
    cursor = conexion.cursor()
    sql="insert into alumno(ci,nombre,paterno,genero,correo,departamento) values (%s,%s,%s,%s,%s,%s)" #la tabla alumno
    cursor.execute(sql, (ci, nombre, paterno, genero, correo, departamento))
    print('Alumno Agregado con exito!')
    conexion.commit()
    #conexion.close()
    
    cursor2 = conexion.cursor()
    sql2="select * from alumno"
    cursor2.execute(sql2)
    conexion.commit()
    registros = cursor2.fetchall() 
    #print(registros)
    for registro in registros:
        print("ci:",registro[0],"- nombre:",registro[1],"- paterno:",registro[2],"- genero:",registro[3],"- correo:",registro[4],"- departamento:",registro[5])
    cursor.close()
    cursor2.close()
    conexion.close()


#interfaz
# import Canvas-> contenedor
# ventana
canvas = Canvas(root, height=250,width=350) # tamaño
canvas.pack() 

# import Frame para hacer los espaciados
frame = Frame()
frame.place(relx=0.1, rely=0.1, relwidth=1, relheight=1) #espaciado 

#import Label
#texto y input
label = Label(frame, text='ADICIONAR UN NUEVO ALUMNO')
label.grid(row=0, column=1)

# el texto y input de los datos del alumno
# import Entry para crear un input de texto
label = Label(frame, text='CI')
label.grid(row=1, column=0)
entry_ci = Entry(frame)
entry_ci.grid(row=1, column=1)

label = Label(frame, text='NOMBRE')
label.grid(row=2, column=0)
entry_nombre = Entry(frame)
entry_nombre.grid(row=2, column=1)

label = Label(frame, text='PATERNO')
label.grid(row=3, column=0)
entry_paterno = Entry(frame)
entry_paterno.grid(row=3, column=1)

label = Label(frame, text='GENERO')
label.grid(row=4, column=0)
entry_genero = Entry(frame)
entry_genero.grid(row=4, column=1)

label = Label(frame, text='CORREO')
label.grid(row=5, column=0)
entry_correo = Entry(frame)
entry_correo.grid(row=5, column=1)

label = Label(frame, text='DEPARTAMENTO')
label.grid(row=6, column=0)
entry_departamento = Entry(frame)
entry_departamento.grid(row=6, column=1,)

#boton para agregar
#import Button
button = Button(frame, text="Agregar", command=lambda:guardar_alumno(
    entry_ci.get(), 
    entry_nombre.get(),
    entry_paterno.get(), 
    entry_genero.get(), 
    entry_correo.get(), 
    entry_departamento.get()))
button.grid(row=7, column=0)

#iniciamos
root.mainloop()
