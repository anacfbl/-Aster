import Foundation
import UIKit
import PlaygroundSupport

public extension UIView {
    func flash() {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 1000
        layer.add(flash, forKey: nil)
        
    }
    
}



// teste animacao
//        let viewFlash = UIView ()
//        let estrelas = UIImage (named: "animacaotela1")
//        let estrelasPiscando = UIImageView (image: estrelas)
//
//        estrelasPiscando.flash()



//        let gif = UIImage.animatedImageNamed ("gif.gif", duration:0)
//        let testeGif = UIImageView(image: gif)
//        testeGif.frame = CGRect (x: 0, y: 0, width: 1024, height:768)



//        let gif = UIImage.gif(name:"gif.gif")
//        let gifView = UIImageView ( image: gif)
//        gifView.loadGif(name: "gif.gif")
//        gifView.frame = CGRect (x: 0, y: 0, width: 1024, height:768)
