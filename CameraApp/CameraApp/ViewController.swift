
import UIKit
import Lottie

class ViewController: UIViewController {
    let backgroundColor = CAGradientLayer()
    let textField1 = UITextField()
    let textField2 = UITextField()
    let button = UIButton()
    let label = UILabel()
    let label1 = UILabel()
    let label2 = UILabel()
    let textField1Image = UIImage(systemName: "person.fill")
    let textField2Image = UIImage(systemName: "lock.fill")
    let animationView = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // backgroundColor
//        view.backgroundColor = .white
            backgroundColor.frame = view.bounds
        backgroundColor.colors = [UIColor.cyan.cgColor ,
                                  UIColor.lightGray.cgColor ,]
            view.layer.addSublayer(backgroundColor)
        
        // setup add Animation for login screen
        animationView.frame = CGRect(x: 0, y: 20 , width: 450, height: 450)
//        animationView.frame = view.bounds
        animationView.animation = Animation.named("selfi")
        animationView.contentMode = .scaleAspectFit
                animationView.play()
                animationView.loopMode = .loop
        view.addSubview(animationView)
                animationView.frame = CGRect(x: 0, y: 20 , width: 450, height: 450)
        //        animationView.frame = view.bounds
                animationView.animation = Animation.named("selfi")
                animationView.contentMode = .scaleAspectFit
                        animationView.play()
                        animationView.loopMode = .loop
                view.addSubview(animationView)
        
        
        // done
//        let toolBar = UIToolbar()
//        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.done, target: self, action: #selector(self.doneClicked))
        
        func doneClicked(){
            view.endEditing(true)
        }
        
        // first textField
        textField1.frame = CGRect(x: 50, y: 330, width: 300, height: 60)
        textField1.backgroundColor = #colorLiteral(red: 0.9417493416, green: 0.9417493416, blue: 0.9417493416, alpha: 1)
        textField1.placeholder = "| User name "
        ImgeInTextField(textField: textField1, fieldImge: textField1Image!)
        
   
        
        // display when click on it
        textField1.layer.cornerRadius = 25  // curve
        view.addSubview(textField1)

        // second textField
        textField2.frame = CGRect(x: 50, y: 430, width: 300, height: 60)
        textField2.backgroundColor = #colorLiteral(red: 0.9417493416, green: 0.9417493416, blue: 0.9417493416, alpha: 1)
        ImgeInTextField(textField: textField2, fieldImge: textField2Image!)
        textField2.placeholder = "| password" // display when click on it
        textField2.layer.cornerRadius = 25 // curve
        textField2.isSecureTextEntry = true
        view.addSubview(textField2)
        
        // button
        button.frame = CGRect(x: 100, y: 550, width: 200, height: 50)
        button.layer.cornerRadius = 25
        
        button.backgroundColor = #colorLiteral(red: 0.1004601792, green: 0.7366248965, blue: 0.6107826829, alpha: 1)
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 30)
        
        view.addSubview(button)
        button.addTarget(self, action: #selector (isAction), for: .touchDown)
        
        // title label
        label.frame = CGRect(x: 10, y: 110, width: 400, height: 50)
        label.text = "Ready capture The moment !"
        label.font = UIFont(name: "TimesNewRomanPS-BoldMT", size: 26)
        label.textColor = #colorLiteral(red: 0.2048765719, green: 0.2848394513, blue: 0.368085444, alpha: 1)
        label.textAlignment = .center
        view.addSubview(label)
        
        //second label
        label2.frame = CGRect(x: 50, y: 290, width: 200, height: 50)
//        label2.text = "Enter your name"
        label2.font = UIFont(name: "GillSans-Italic", size: 19)
        label2.textColor = .gray
//        label2.textAlignment = .center
        view.addSubview(label2)
        
        //first label
        label1.frame = CGRect(x: 50, y: 390, width: 200, height: 50)
//        label1.text = "Enter your password"
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
    
    //Def imge for Text Field
    @objc func ImgeInTextField(textField: UITextField, fieldImge img: UIImage) {
        let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: 500 , height: 100 ))
    leftImageView.image = img
        leftImageView.tintColor = .gray
    textField.leftView = leftImageView
        textField.leftViewMode = .always

}
}

//extension UITextField {
//    func clear(){
//        self.text = ""
//    }
//}
