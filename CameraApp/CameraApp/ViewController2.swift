
import UIKit

class ViewController2: UIViewController {
    let myLabel = UILabel()
    let imageView = UIImageView(image: UIImage(named: "user1"))
    let buttonV2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label
        view.backgroundColor = .white
        myLabel.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        myLabel.font = UIFont(name: "GillSans-Italic", size: 30)
           myLabel.text = ""
        myLabel.textColor = .black
        myLabel.textAlignment = .center
        view.addSubview(myLabel)
        
        // Image
        imageView.frame = CGRect(x: 90, y: 80, width: 200, height: 200)
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = imageView.frame.height / 2
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        // button
        buttonV2.frame = CGRect(x: 70, y: 480, width: 250, height: 50)
        buttonV2.layer.cornerRadius = 10
        buttonV2.backgroundColor = #colorLiteral(red: 0.2048765719, green: 0.2848394513, blue: 0.368085444, alpha: 1)
        buttonV2.setTitle("Add profile image", for: .normal)
        buttonV2.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 28)
        view.addSubview(buttonV2)
        buttonV2.addTarget(self, action: #selector (isAction2), for: .touchDown)
    }
    
    @objc func isAction2(){
        let vc3 = ViewController3()
//        present(vc3, animated: true, completion: nil)
//        vc3.modalPresentationStyle = .fullScreen
        let navController = UINavigationController(rootViewController: vc3) //Add navigation controller
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true, completion: nil)
//        vc4.myLabel.text = "Hello,  \(textField1.text ?? " ")"
    }
}

// xxx
