//
//  ViewController.swift
//  AlertProject
//
//  Created by Ufuk Celen on 4.08.2021.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var pasText: UITextField!
    
    
    @IBOutlet weak var rePassText: UITextField!
    
    func myAlert (baslik: String , mesaj: String ){
        
        let alert = UIAlertController(title: baslik, message: mesaj, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true , completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpPressed(_ sender: Any) {
     /*
        //hata mesajı içeriğini oluştur
        let alert = UIAlertController(title: "Hata", message: "bu bir hatadır", preferredStyle:UIAlertController.Style.alert)
       //buttonu oluştur
        let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { UIAlertAction in
            //butona tıklayınca olacaklar
            
        }
       //buttonu aktif et
        alert.addAction(okButton)
         //alertı ortaya çıkar
        // self.present(alert, animated: true, completion: nil)
        
        */
        
        
        
        if userNameText.text == "" || pasText.text == "" || rePassText.text == ""{
            myAlert(baslik: "Error", mesaj: "Eksik Bilgi")
        }else if pasText.text != rePassText.text {
            myAlert(baslik: "Error", mesaj: "Şifreler Aynı Değil")
        }else{
            myAlert(baslik: "Succes!", mesaj: "Girişler Başarılı")
        }
        
        
        
        
        
        
    }
    
}

