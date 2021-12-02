

import UIKit

class ViewController3: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    let myLabel = UILabel()
    let imageView1 = UIImageView(image: UIImage(named: "pic3"))
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Label
        myLabel.frame = CGRect(x: 60, y: 60, width: 200, height: 50)
        myLabel.font = UIFont(name: "GillSans-Italic", size: 30)
        myLabel.text = "hiii"
        
        let vc = ViewController()
        myLabel.text = "Hello,  \(vc.textField1.text ?? " ")"
        
        myLabel.textColor = .black
        myLabel.textAlignment = .center
        view.addSubview(myLabel)
        
        // Image
        imageView1.frame = CGRect(x: 18, y: 140, width: 340, height: 500)
        view.addSubview(imageView1)
        
        // button
        button.frame = CGRect(x: 70, y: 680, width: 250, height: 50)
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.2048765719, green: 0.2848394513, blue: 0.368085444, alpha: 1)
        button.setTitle("Add profile image", for: .normal)
        button.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 28)
        view.addSubview(button)
        button.addTarget(self, action: #selector (isAction1), for: .touchDown)
        
    }
    
    @objc func isAction1(){
        let cameraView = UIImagePickerController()
        cameraView.delegate = self
        cameraView.sourceType = .camera
        present(cameraView, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        imageView1.image = pickedImage
        dismiss(animated: true, completion: nil)
    }
    
}
// cm
