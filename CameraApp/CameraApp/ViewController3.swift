

import UIKit
//screen 2 (hello)
class ViewController3: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    let myLabel = UILabel()
    let imageView1 = UIImageView(image: UIImage(named: "nopic"))
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.9548351169, blue: 0.959299624, alpha: 1)
        
        // Image
        imageView1.frame = CGRect(x: 10, y: 140, width: 370, height: 600)
        view.addSubview(imageView1)

        // Label
        myLabel.frame = CGRect(x: 40, y: 195, width: 200, height: 50)
        myLabel.font = UIFont(name: "GillSans-Italic", size: 30)
        myLabel.text = "hiii"
        
        let vc = ViewController()
        myLabel.text = "Hello,  \(vc.textField1.text ?? " ")"
        
        myLabel.textColor = .black
        myLabel.textAlignment = .center
        view.addSubview(myLabel)
        
     
        
        // button
        button.frame = CGRect(x: 70, y: 680, width: 250, height: 50)
        button.layer.cornerRadius = 25
        button.backgroundColor = .systemPink
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.6440103054, green: 0, blue: 0.2728398442, alpha: 1)
        button.setTitle("Add first image", for: .normal)
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
