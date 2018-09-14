//
//  LoginViewController.swift
//  MorarAqui
//
//  Created by Gabriel Murizine on 31/03/17.
//  Copyright © 2017 Instituto de Pesquisas Eldorado. All rights reserved.
//
import UIKit

class LoginViewController: UIViewController {
    
    public let loginuser = UserService()
    public var Userlogged:User?
    
    @IBOutlet var username_input: UITextField!
    @IBOutlet var password_input: UITextField!
    @IBOutlet var wrongpassword_username: UILabel!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.password_input.isSecureTextEntry = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func go(_ sender: UIButton) {
        //chamar função userverify para validar usuário e senha
        Userlogged = loginuser.verifyLogin(user: username_input.text!, password: password_input.text!)
        if(Userlogged == nil){
            wrongpassword_username.isHidden = false//mostra que o usuário colocou um login inválido
        }else{
            performSegue(withIdentifier: "TableViewHouse", sender: self)//passa pra próxima tela (imóveis do usuário ou cadastro de imóveis)
            //salva o objeto usuário como usuário logado
        }
        
        //mostrar outlet caso a função retornar false
    }
    
    @IBAction func register(_ sender: UIButton) {
    }
    
    @IBAction func dontremenberpassword(_ sender: UIButton) {
        //enviar informações para
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
