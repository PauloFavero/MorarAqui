//
//  UserService.swift
//  MorarAqui
//
//  Created by Edgar Silva on 31/03/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation

class UserService {
    
    //MARK: USER->SERVER
    //Functions utilised in to make request of user on the server
    public func insert(_ user: User) -> Bool {
        
        return false
    }
    public func autenticate(email: String, confirmationEmail: String, password: String, confirmationPassword:String) -> Bool {
        
        var confirmation:Bool = true
        
        if email != confirmationEmail {
            confirmation = false
        }
        if password != confirmationPassword{
            confirmation =  false
        }
        
        return confirmation
    }
    
    public func logout() {
        
    }
    public func update(_ user: User) -> Bool {
        return false
    }
    public func delete(_ user: User) -> Bool {
        return false
    }
    public func isLogged(_user: User) -> User? {
        return nil
    }
    public func verifyLogin(user: String, password: String) -> User? {
        let userArray = UserModel()
        let userVerify: [User]
        userVerify = userArray.allUserCadastred.filter{ $0.userName == user }
        
        if (userVerify.count != 0 && userVerify[0].password == password){
            return userVerify[0]
        }
        
        return nil
    }

    //MARK: Search on server
    //Return a User from the server specified by a atributte
    
    public func get(id: Int) -> User? {
        return nil
    }
    public func get(email: String) -> User? {
        return nil
    }
    public func get(username: String) -> User? {
        return nil
    }
    //
    
}
