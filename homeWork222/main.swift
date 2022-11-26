
//№2.
//Создать класс Больница
//Создать класс пациент
//Добавить массив пациентов в больницу
//Создать приватную функцию поиска по фамилии и имени, добавление(с учетом что такого человека еще нет) и удаление с учетом если есть
//В main создать объект Больницы и протестировать ваш код разными кейсами

var sickArray = [Sick]()

sickArray.append(Sick(nameSurname: "Васильев Иван"))
sickArray.append(Sick(nameSurname: "Тони Старк"))
sickArray.append(Sick(nameSurname: "Саша Белый"))
sickArray.append(Sick(nameSurname: "Анатолий Петров"))
sickArray.append(Sick(nameSurname: "Ирина Генадьевна"))
sickArray.append(Sick(nameSurname: "Олег Александров"))

var hospital = Hospital(sick: sickArray)


private func findSick(_ name : String){
    if hospital.sick.contains(where: {$0.nameSurname == name}){
        let i = hospital.sick.firstIndex(where: {$0.nameSurname == name})
        print("Пациент найден")
        hospital.sick.remove(at: i!)
        dump(hospital.sick)
    }else{
        print("Пациент не найден")
        hospital.sick.append(Sick(nameSurname: name))
        dump(hospital.sick)
    }
}

findSick("Саша Xелый")
