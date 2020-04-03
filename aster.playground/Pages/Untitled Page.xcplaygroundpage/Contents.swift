//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        
        // fundo tela inicial - só nome e estrelas
        let tela1 = UIImage(named: "tela-1")!
        let telaInicio = UIImageView(image: tela1)
        
        // botao comecar tela inicial
        
        let botaoComecarImagem = UIImage (named: "comecarbotao")
        let botaoComecar = UIButton ()
        botaoComecar.setImage(botaoComecarImagem, for: .normal)
        botaoComecar.frame = CGRect ( x: 533, y: 431, width: 162, height:43)
        
        
        // fundo tela 2 - de onde vieram as historias?
        let tela2 = UIImage(named: "tela 2")!
        let telaHistoria = UIImageView(image: tela2)
        
        
        view.addSubview (telaInicio)
        view.addSubview (botaoComecar)
        
        
    } // fecha load view
} // fecha view controller


//formato da tela para a classe view controller
let vc = MyViewController(screenType: .ipad, isPortrait: false)
PlaygroundPage.current.liveView = vc.scale(to: 0.5)
