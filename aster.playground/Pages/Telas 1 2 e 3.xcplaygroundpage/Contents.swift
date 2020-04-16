import UIKit
import PlaygroundSupport
import Foundation
import XCPlayground


let navigation = UINavigationController(screenType: .ipad, isPortrait: false)






class PrimeiraTela : UIViewController {
    
    override func loadView() {
        let view = UIView()
        self.view = view
        
        
        // animacao CEU
        let animationPictures: [UIImage] = [UIImage(named: "animacaotela1.png")!,UIImage(named: "2animacaptela1")!,UIImage(named: "3animacaotela1")!,UIImage(named: "1animacaotela1")!]

        let animationView = UIImageView(frame: CGRect (x: 0, y: 0, width: 1024, height:768))
        animationView.animationImages = animationPictures
        animationView.animationDuration = 4
        animationView.animationRepeatCount = 0
        animationView.startAnimating()
        
     
        // animacao estrela LOGO
        let animacaoEstrelaLogo: [UIImage] = [UIImage(named: "1-8.png")!,UIImage(named: "2-8.png")!,UIImage(named: "3-8.png")!,UIImage(named: "4-8.png")!,UIImage(named: "5-8.png")!,UIImage(named: "6-8.png")!,UIImage(named: "7-8.png")!,UIImage(named: "8-8.png")!,UIImage(named: "9-8.png")!,UIImage(named: "8-8.png")!,UIImage(named: "7-8.png")!,UIImage(named: "6-8.png")!,UIImage(named: "5-8.png")!,UIImage(named: "4-8.png")!,UIImage(named: "3-8.png")!,UIImage(named: "2-8.png")!]

        let animacaoEstrelaView = UIImageView(frame: CGRect (x: 650, y: 190, width: 70, height:70))
        animacaoEstrelaView.animationImages = animacaoEstrelaLogo
        animacaoEstrelaView.animationDuration = 2
        animacaoEstrelaView.animationRepeatCount = 0
        animacaoEstrelaView.startAnimating()
        
        
        

        
        // fundo tela inicial - nome e estrelas
        let tela1 = UIImage(named: "tela1")!
        let telaInicio = UIImageView(image: tela1)
       
        
        
        // botao comecar tela inicial
        let botaoComecarImagem = UIImage (named: "comecarbotao")
        let botaoComecar = UIButton ()
        botaoComecar.setImage(botaoComecarImagem, for: .normal)
        botaoComecar.frame = CGRect ( x: 420, y: 510, width: 161, height:43)
        
        botaoComecar.addTarget (nil, action: #selector (tocouBotaoComecar), for: .touchUpInside)
        
        view.addSubview (telaInicio)
        view.addSubview (botaoComecar)
        
        
        view.addSubview (animationView)
        view.addSubview (animacaoEstrelaView)

        
    } // fecha load view
    
    
    
    @objc func tocouBotaoComecar () {
        navigationController?.pushViewController(segundaTela, animated: false)
        
        
    } // fecha funcao tocou botao comecar
    
} // fecha view primeira tela










class SegundaTela : UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        // fundo tela 2 - de onde vieram as historias?
        let tela2 = UIImage(named: "tela2")!
        let telaHistoria = UIImageView(image: tela2)
        // botao proximo tela historia
        let botaoProximoImagem = UIImage (named: "proximobotao")
        let botaoProximo = UIButton ()
        botaoProximo.setImage(botaoProximoImagem, for: .normal)
        botaoProximo.frame = CGRect ( x: 450, y: 660, width: 161, height:43)
        
        botaoProximo.addTarget (nil, action: #selector (tocouBotaoProximo), for: .touchUpInside)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        
        view.addSubview (telaHistoria)
        view.addSubview (botaoProximo)
        view.addSubview(botaoVoltar)
        
        
    } // fecha load view
    
    @objc func tocouBotaoProximo () {
        navigationController?.pushViewController(terceiraTela, animated: false) }
    
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false)
        
        
    }// fecha funcao tocou botao proximo
    
} // fecha view segunda tela










class TerceiraTela : UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        
        // fundo tela 3 - o que é o zodiaco?
        let tela3 = UIImage(named: "tela3")!
        let telaZodiaco = UIImageView(image: tela3)
        // botao comecar tela zodiaco
        let botaoComecarImagem = UIImage (named: "proximobotao")
        let botaoComecarZodiaco = UIButton ()
        botaoComecarZodiaco.setImage(botaoComecarImagem, for: .normal)
        botaoComecarZodiaco.frame = CGRect ( x: 450, y: 660, width: 161, height:43)
        
        botaoComecarZodiaco.addTarget (nil, action: #selector (tocouBotaoComecarZodiaco), for: .touchUpInside)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (telaZodiaco)
        view.addSubview (botaoComecarZodiaco)
        view.addSubview(botaoVoltar)
        
        
    } // fecha load view
    
    @objc func tocouBotaoComecarZodiaco () {
        navigationController?.pushViewController(quartaTela, animated: false) }
    
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false)
        
        
    } // fecha funcao tocou botao comecar zodiaco
    
} // fecha view terceira tela










let primeiraTela = PrimeiraTela (screenType: .ipad, isPortrait: false)
let segundaTela = SegundaTela (screenType: .ipad, isPortrait: false)
let terceiraTela = TerceiraTela (screenType: .ipad, isPortrait: false)
let catalogo = Catalogo (screenType: .ipad, isPortrait: false)
let quartaTela = QuartaTela (screenType: .ipad, isPortrait: false)

navigation.pushViewController (primeiraTela, animated: false)

//navigation.navigationBar.backgroundColor = UIColor.azulFundo
//navigation.navigationBar.barTintColor = UIColor.azulFundo

navigation.navigationBar.isHidden = true

PlaygroundPage.current.liveView = navigation.scale(to: 0.6)

