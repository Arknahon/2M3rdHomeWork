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

class DataBase {
    var id: Int = 0

    private var studentsArray: [Students] = []
    private var teachersArray: [Teachers] = []
    
    init(id: Int){
        self.id = id
    }
    
    func addStudent(student: Students) {
        studentsArray.append(student)
    }
    func addTeacher(teacher: Teachers) {
        teachersArray.append(teacher)
    }
    func deleteStudent(id: Int) {
        let studentsArrayLength = studentsArray.count
        for student in studentsArray{
            if student.getID() == id {
        studentsArray.remove(at: id)
                print("Student \(student.getName()) \(student.getSurname()) was delete from data base")
            }
        }
        if studentsArray.count == studentsArrayLength {
            print("An invalid ID was entered!")
        }
    }
    func deleteTeacher(name: String, surname: String, age: Int) {
        if teachersArray.count >= 0{
            for (index,teacher) in teachersArray.enumerated() {
                if teacher.getName() == name && teacher.getSurname() == surname && teacher.getAge() == age {
            teachersArray.remove(at: index)
                    print("Teacher \(teacher.getName()) \(teacher.getSurname()) was delete from data base")
                }
            }
        }else{
            print("empty array")
        }
        
    }
    func listOfStudents() {
        print("List of students:")
        print("*********")
        for item in studentsArray{
            print(item.getStudentInfo())
            print("*********")
        }
    }
        func listOfTeachers() {
            print("List of teachers:")
            print("*********")
            for item in teachersArray{
                print(item.getTeacherInfo())
                print("*********")
            }
        }

    func getArrayStudents(){
        dump(studentsArray)
    }
    func getArrayTeachers(){
        dump(teachersArray)
    }
       
}

