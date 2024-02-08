//
//  ViewController.swift
//  FaceRecognition
//
//  Created by yekta on 8.02.2024.
//

import UIKit
import LocalAuthentication
class ViewController: UIViewController {
    
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signButton.layer.cornerRadius = 20
        signButton.layer.masksToBounds = true
    }
    
    @IBAction func signButtonTapped(_ sender: Any) {
        let authContext = LAContext()
        var error: NSError?
        
        //alttaki error parametresi normalde ben error pointer type bekliyorum diye hata verir. bunu istenen pointera donusturmek icin basina & koymak yeterli.
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Is it you?") { success, error in
                if success == true {
                    DispatchQueue.main.async{
                        self.performSegue(withIdentifier: "toSecondVC", sender: self)
                    }
                }
                else{
                    DispatchQueue.main.async{
                        self.resultLabel.text = "Error!"
                    }
                }
            }
        }
        
    }
}

