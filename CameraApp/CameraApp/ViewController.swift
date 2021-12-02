
import UIKit

class ViewController: UIViewController {
    let textField1 = UITextField()
    let textField2 = UITextField()
    let button = UIButton()
    let label = UILabel()
    let label1 = UILabel()
    let label2 = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // backgroundColor
        view.backgroundColor = .white
        
        // done
//        let toolBar = UIToolbar()
//        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.done, target: self, action: #selector(self.doneClicked))
        
        func doneClicked(){
            view.endEditing(true)
        }
        
        // first textField
        textField1.frame = CGRect(x: 50, y: 330, width: 300, height: 50)
        textField1.backgroundColor = #colorLiteral(red: 0.9417493416, green: 0.9417493416, blue: 0.9417493416, alpha: 1)
        textField1.placeholder = "Enter your name" // display when click on it
        textField1.borderStyle = .roundedRect
        view.addSubview(textField1)

        // second textField
        textField2.frame = CGRect(x: 50, y: 430, width: 300, height: 50)
        textField2.backgroundColor = #colorLiteral(red: 0.9417493416, green: 0.9417493416, blue: 0.9417493416, alpha: 1)
        textField2.placeholder = "Enter your password" // display when click on it
        textField2.borderStyle = .roundedRect // curve
        textField2.isSecureTextEntry = true
        view.addSubview(textField2)
        
        // button
        button.frame = CGRect(x: 100, y: 550, width: 200, height: 50)
        button.layer.cornerRadius = 10
        
        button.backgroundColor = #colorLiteral(red: 0.1004601792, green: 0.7366248965, blue: 0.6107826829, alpha: 1)
        button.setTitle("Log in", for: .normal)
        button.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 30)
        view.addSubview(button)
        button.addTarget(self, action: #selector (isAction), for: .touchDown)
        
        // title label
        label.frame = CGRect(x: 95, y: 110, width: 200, height: 50)
        label.text = "Welcome"
        label.font = UIFont(name: "GillSans-Italic", size: 40)
        label.textColor = #colorLiteral(red: 0.2048765719, green: 0.2848394513, blue: 0.368085444, alpha: 1)
        label.textAlignment = .center
        view.addSubview(label)
        
        //second label
        label2.frame = CGRect(x: 50, y: 290, width: 200, height: 50)
        label2.text = "Enter your name"
        label2.font = UIFont(name: "GillSans-Italic", size: 19)
        label2.textColor = .gray
//        label2.textAlignment = .center
        view.addSubview(label2)
        
        //first label
        label1.frame = CGRect(x: 50, y: 390, width: 200, height: 50)
        label1.text = "Enter your password"
        label1.font = UIFont(name: "GillSans-Italic", size: 19)
        label1.textColor = .gray
        view.addSubview(label1)
    }
    
    @objc func isAction(){
//            let vc = ViewController2()
        let vc = ViewController3()
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true, completion: nil)
//        vc.myLabel.text = "Hello,  \(textField1.text ?? " ")"
    }
}

//extension UITextField {
//    func clear(){
//        self.text = ""
//    }
//}
