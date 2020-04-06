import UIKit
import PlaygroundSupport

// Welcome guys!!! This sample code will help you to begin with computational thinking.
// This is just to help you to recognize every path in computational thinking
// I hope that could be very useful

class ViewController: UIViewController{
    
    var button = UIButton()
    var label  = UILabel()
    var label2 = UILabel()
    var image = UIImage()
    var imageview = UIImageView()

    override func loadView() {
        let view = UIView()
        self.view = view
        
        self.view.backgroundColor = .white
        
//      to decompose code let you have a cleaner viewDidLoad() function
//      if you find some bugs, it's easier to discover them and to fix them
        
        setButton()
        
        setLabel()
        
        setLabel2()
        
        setImageView()
    }
    
    func setButton(){
        view.addSubview(button)
        button.setTitle("Begin!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 25
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        setButtonConstraints()
    }
    
    func setButtonConstraints(){
//        don't put constraints in viewDidLoad() function, in this way you're sure that is all in order
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 690).isActive = true
        button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -70).isActive = true
        button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50).isActive = true
        button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
    }

    func setLabel(){
//        call your variables, your functions in a way that you can re-use them in every projects
//        in this way you provide abstraction to your code
//        in future, if you need a label with similar properties you can re-use it, by changing just the text inside
//        less work, better work
        view.addSubview(label)
        label.text = "Begin your journey in Computational Thinking. \n Tap 'Begin' button"
        label.textColor = .black
        label.font.withSize(24)
        label.numberOfLines = 7
        label.textAlignment = .center
        label.alpha = 1.0
        
        
        
        setLabelConstraints()
    }
    
    func setLabel2(){
//        oh you recognized a pattern? Yeah labels are similar, I just changed the text inside the label
        view.addSubview(label2)
        label2.text = "Bravo! Don't copy/paste code. Read comments!! \nGood luck!"
        label2.textColor = .black
        label2.font.withSize(24)
        label2.numberOfLines = 7
        label2.textAlignment = .center
        label2.alpha = 0.0
        
        setLabel2Constraints()
    }
    
//    similar constraints for labels
    
    func setLabelConstraints(){
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        label.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -400).isActive = true
        label.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50).isActive = true
        label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
    }
    
    func setLabel2Constraints(){
//        reusable code also provide other coders to understand your code
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        label2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -400).isActive = true
        label2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50).isActive = true
        label2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
    }
    
    func setImageView(){
        view.addSubview(imageview)
        image = UIImage(named: "computational_thinking.png")!
        imageview.image = image
        imageview.alpha = 0.0
        
        setImageViewConstraints()
    }
    
    func setImageViewConstraints(){
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        imageview.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
        imageview.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -90).isActive = true
        imageview.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -525).isActive = true
    }
    
    @objc func buttonTapped(){
//        a small algorithm design in which you can see something that appears and something that disappears
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .transitionCrossDissolve, animations: {self.label.alpha = 0.0}, completion: {
            _ in
            UIView.animate(withDuration: 1.0, delay: 0.3, options: .transitionCrossDissolve, animations: {self.label2.alpha = 1.0}, completion: {
            _ in
                UIView.animate(withDuration: 1.0, delay: 0.0, options: .transitionCrossDissolve, animations: {self.imageview.alpha = 1.0}, completion: nil)
            })
        }
        )
    }
}


let vc = ViewController()
vc.preferredContentSize = CGSize(width: 375, height: 812) // iPhoneX
PlaygroundPage.current.liveView = vc
