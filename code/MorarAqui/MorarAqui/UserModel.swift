//
//  UserModel.swift
//  MorarAqui
//
//  Created by Edgar Silva on 31/03/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation

class UserModel {
    
    var allUserCadastred:[User] = []
    
    init() {
        self.allUserCadastred.append(User(1,"sergioordine@gmail.com", "Sergio","Ordini", "123456"))
        self.allUserCadastred.append(User(2,"marceloreina@gmail.com", "Marcelo","Reina", "123456"))
        self.allUserCadastred.append(User(3,"janisjoplin@gmail.com", "Janis","Joplin", "123456"))
        self.allUserCadastred.append(User(4,"brucedickinson@gmail.com", "Cruce","Dickinson", "123456"))
        self.allUserCadastred.append(User(5,"jimihendrix@gmail.com", "Jimi","Hendrix", "123456"))
        self.allUserCadastred.append(User(6,"tommorello@gmail.com", "Tom","Morello", "123456"))
    }
    
    public func insertUsers (id Id: Int, userName username:String, firstname firstName: String, lastname lastName: String, password passWord:String){
    
        self.allUserCadastred.append(User(Id,username,firstName,lastName,passWord))
        
        
    }
    
}
