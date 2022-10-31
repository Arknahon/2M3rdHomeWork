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

class Students {
    private var name: String = ""
    private var surname: String = ""
    private var age: Int = 0
    private var form: Int = 0
    private var id: Int = 0
    
    init(name: String, surname: String, age: Int, form: Int, id: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.form = form
        self.id = id
    }
    
    func getName()->String{
        return self.name
    }
    
    func getID()->Int{
        return self.id
    }
    
    func getSurname()->String{
        return self.surname
    }
    
    func getStudentInfo()->String{
        return "\(self.name) \(self.surname)\nAge: \(self.age)\nForm: \(self.form)\nID: \(self.id)"
    }
}
