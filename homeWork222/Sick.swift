class Sick{
    var nameSurname: String
    
    init(nameSurname: String) {
        self.nameSurname = nameSurname
    }
    func addSick(_ sick: Sick){
        sickArray.append(sick)
    }
}
