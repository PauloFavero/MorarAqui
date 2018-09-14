//
//  User.swift
//  MorarAqui
//
//  Created by Edgar Silva on 31/03/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//

import Foundation

class User {
    
    private var id:Int = 0
    public var userName:String = ""
    private var firstName:String = ""
    private var lastName:String = ""
    public var password:String = ""
    private var houses:[House] = []
    
    
    /// CONSTRUCTOR
    ///
    /// - Parameters:
    ///   - id: id description
    ///   - _username: _username description
    ///   - firstname: firstname description
    ///   - lastname: lastname description
    ///   - password: password description
    /// - Returns: return value description
    init(_ id:Int, _ userName: String, _ firstName:String, _ lastName:String, _ password: String) {
        
        //  let user:User = User()
        
        self.id = id
        self.userName = userName
        self.firstName = firstName
        self.lastName = lastName
        self.password = password
        
        
    }
    
    //MARK: Get methods
    public func getId(_ user: User) -> Int{
        
        return user.id
    }
    public func getUserName(_ user: User) -> String{
        
        return user.userName
    }
    public func getPassword(_ user: User) -> String{
        
        return user.password
    }
    public func getFirstName(_ user: User) -> String{
        
        return user.firstName
    }
    public func getLastName(_ user: User) -> String{
        
        return user.lastName
    }
    //
    
    //MARK: Set methods
    public func set(id: Int) {
        self.id = id
    }
    public func set(userName: String) {
        self.userName = userName
    }
    public func set(password: String) {
        self.password = password
    }
    public func set(firstName: String) {
        self.firstName = firstName
    }
    public func set(lastName: String) {
        self.lastName = lastName
    }
    
}
