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
        navigationController?.pushViewController(segundaTela, animated: false)
        
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
        navigationController?.pushViewController(terceiraTela, animated: false)
        
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
        navigationController?.pushViewController(telaCeu, animated: false)
        
    } // fecha funcao tocou botao comecar zodiaco
    
} // fecha view terceira tela


class TelaCeu : UIViewController {
    
    // fundo tela ceu - todas as constelacoes
    let ceuEstrelas = UIImage(named: "ceuestrelas")!
    var fundoCeu = UIImageView()
    let scrollView = UIScrollView()
    let botaoHistoriasImagem = UIImage(named: "historiasbotao")!
    let botaoRespostaImagem = UIImage(named: "ajudabotao")
    let botaoAjuda = UIButton ()
    let botaoHistorias = UIButton()
    let viewBotoes = UIView()
    
    override func loadView() {
        fundoCeu = UIImageView(image: ceuEstrelas)
        self.view = viewBotoes
    } // fecha load view
    
    override func viewDidLoad() {
        scrollView.frame = CGRect (x: 0, y: 0, width: 1024, height:768)
        scrollView.contentSize = fundoCeu.frame.size
        scrollView.addSubview(fundoCeu)
        scrollView.flashScrollIndicators()
        
        botaoHistorias.setImage(botaoHistoriasImagem, for: .normal)
        botaoHistorias.frame = CGRect ( x: 53, y: 680, width: 174, height:35)
        botaoHistorias.addTarget (nil, action: #selector (tocouBotaoHistorias), for: .touchUpInside)
        
        botaoAjuda.setImage(botaoRespostaImagem, for: .normal)
        botaoAjuda.frame = CGRect ( x: 250, y: 680, width: 174, height:35)
        botaoAjuda.addTarget(nil, action: #selector(tocouBotaoAjuda), for: .touchUpInside)
        
        
        viewBotoes.addSubview(scrollView)
        viewBotoes.addSubview(botaoHistorias)
        viewBotoes.addSubview(botaoAjuda)
        self.view.addSubview(botaoHistorias)
        
    } // fecha view did load
    @objc func tocouBotaoHistorias () {
        navigationController?.pushViewController(catalogo, animated: false)    } // fecha funcao tocoubotaohistoria
    
    @objc func tocouBotaoAjuda() {
        navigationController?.pushViewController(ajuda, animated: false)    }// fecha ajuda down
    
    
    
} // fecha classe tela ceu



class TelaAjuda : UIViewController {
    override func loadView() {
        
        // fundo tela resposta
        let respostaImagem = UIImage(named: "ceuresposta")!
        let telaRespostas = UIImageView(image: respostaImagem)
        
        let scrollView = UIScrollView()
        scrollView.contentSize = telaRespostas.frame.size
        scrollView.addSubview(telaRespostas)
        scrollView.flashScrollIndicators()
        
        self.view = scrollView
        
        scrollView.addSubview (telaRespostas)
        
    } // fecha load view
} // fecha classe respostas





let primeiraTela = PrimeiraTela (screenType: .ipad, isPortrait: false)
let segundaTela = SegundaTela (screenType: .ipad, isPortrait: false)
let terceiraTela = TerceiraTela (screenType: .ipad, isPortrait: false)
let telaCeu = TelaCeu (screenType: .ipad, isPortrait: false)
let catalogo = Catalogo (screenType: .ipad, isPortrait: false)
let ajuda = TelaAjuda(screenType: .ipad, isPortrait: false)

let navigation = UINavigationController(screenType: .ipad, isPortrait: false)
navigation.pushViewController (primeiraTela, animated: false)



////cor do texto ???
//navigation.navigationBar.backgroundColor = UIColor.yellow
//
//// cor da barra
//navigation.navigationBar.barTintColor = UIColor.azulFundo



PlaygroundPage.current.liveView = navigation.scale(to: 0.5)
