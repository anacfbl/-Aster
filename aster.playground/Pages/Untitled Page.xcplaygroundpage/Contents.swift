import UIKit
import PlaygroundSupport
import Foundation

class PrimeiraTela : UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        
        // fundo tela inicial - nome e estrelas
        let tela1 = UIImage(named: "tela-1")!
        let telaInicio = UIImageView(image: tela1)
        // botao comecar tela inicial
        let botaoComecarImagem = UIImage (named: "comecarbotao")
        let botaoComecar = UIButton ()
        botaoComecar.setImage(botaoComecarImagem, for: .normal)
        botaoComecar.frame = CGRect ( x: 420, y: 500, width: 162, height:43)
        
        botaoComecar.addTarget (nil, action: #selector (tocouBotaoComecar), for: .touchUpInside)
        
        
        view.addSubview (telaInicio)
        view.addSubview (botaoComecar)
        
    } // fecha load view
    
    @objc func tocouBotaoComecar () {
        print("gerou")
        navigationController?.pushViewController(segundaTela, animated: true)
    
    } // fecha funcao tocou botao comecar
    
} // fecha view primeira tela



class SegundaTela : UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        // fundo tela 2 - de onde vieram as historias?
        let tela2 = UIImage(named: "tela 2")!
        let telaHistoria = UIImageView(image: tela2)
        // botao proximo tela historia
        let botaoProximoImagem = UIImage (named: "proximo botao")
        let botaoProximo = UIButton ()
        botaoProximo.setImage(botaoProximoImagem, for: .normal)
        botaoProximo.frame = CGRect ( x: 450, y: 660, width: 112, height:30)
        
        botaoProximo.addTarget (nil, action: #selector (tocouBotaoProximo), for: .touchUpInside)
        
        view.addSubview (telaHistoria)
        view.addSubview (botaoProximo)
        
    } // fecha load view
    
    @objc func tocouBotaoProximo () {
        print ("tudo")
        navigationController?.pushViewController(terceiraTela, animated: true)

    }// fecha funcao tocou botao proximo
    
} // fecha view segunda tela



class TerceiraTela : UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        
        // fundo tela 3 - o que é o zodiaco?
        let tela3 = UIImage(named: "tela-3")!
        let telaZodiaco = UIImageView(image: tela3)
        // botao comecar tela zodiaco
        let botaoComecarImagem = UIImage (named: "comecarbotao")
        let botaoComecarZodiaco = UIButton ()
        botaoComecarZodiaco.setImage(botaoComecarImagem, for: .normal)
        botaoComecarZodiaco.frame = CGRect ( x: 450, y: 660, width: 112, height:30)
        
        botaoComecarZodiaco.addTarget (nil, action: #selector (tocouBotaoComecarZodiaco), for: .touchUpInside)
        
        view.addSubview (telaZodiaco)
        view.addSubview (botaoComecarZodiaco)
        
        
    } // fecha load view
    
    @objc func tocouBotaoComecarZodiaco () {
        print ("yeahh")
    } // fecha funcao tocou botao comecar zodiaco
    
} // fecha view terceira tela


let primeiraTela = PrimeiraTela (screenType: .ipad, isPortrait: false)
let segundaTela = SegundaTela (screenType: .ipad, isPortrait: false)
let terceiraTela = TerceiraTela (screenType: .ipad, isPortrait: false)

let navigation = UINavigationController(screenType: .ipad, isPortrait: false)
navigation.pushViewController (primeiraTela, animated: false)
navigation.navigationBar.isHidden =  true

PlaygroundPage.current.liveView = navigation.scale(to: 0.5)







//formato da tela para a classe view controller
//let vc = PrimeiraTela(screenType: .ipad, isPortrait: false)
//PlaygroundPage.current.liveView = vc.scale(to: 0.5)
