import Foundation
//#1. Создать класс DataBase.
//
//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса, потом использовать)
//
//В каждом из классов, касающихся базы данных должны быть методы для добавление, удаления и считывания учеников/учителей.
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл

var dataBase = DataBase(id: 1138921874)
dataBase.addStudent(student: Students(name: "Nurik", surname: "Bakirov", age: 18, form: 11, id: 0))
dataBase.addStudent(student: Students(name: "Bilal", surname: "Mamajanov", age: 17 , form: 10, id: 1))
dataBase.addStudent(student: Students(name: "Askar", surname: "Alybaev", age: 8, form: 2, id: 2))
dataBase.addStudent(student: Students(name: "Begimay", surname: "Mirsova", age: 15, form: 9, id: 3))
dataBase.addStudent(student: Students(name: "Tariel", surname: "Saparaliev", age: 18 ,form: 11, id: 4))

dataBase.listOfStudents()
print("")

dataBase.addTeacher(teacher: Teachers(name: "Maksuda", surname: "Kadyrova", age: 59, id: 0))
dataBase.addTeacher(teacher: Teachers(name: "Mihail", surname: "Petrovich", age: 36, id: 1))
dataBase.addTeacher(teacher: Teachers(name: "Gocha", surname: "Vasilyevich", age: 41, id: 2))
dataBase.addTeacher(teacher: Teachers(name: "Anna", surname: "Borisova", age: 39, id: 3))
dataBase.addTeacher(teacher: Teachers(name: "Elena", surname: "Kim", age: 28, id: 4))

dataBase.listOfTeachers()
print("")


dataBase.deleteStudent(id: 1)
dataBase.listOfStudents()

print("")
dataBase.deleteTeacher(name: "Gocha", surname: "Vasilyevich", age: 41)
dataBase.listOfTeachers()

//---------------------------------------
//dataBase.getArrayStudents()
//print("-----")
//dataBase.getArrayTeachers()
