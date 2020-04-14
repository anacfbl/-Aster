import Foundation
import UIKit
import PlaygroundSupport


public class TelaCeu : UIViewController {
    
    // fundo tela ceu - todas as constelacoes
    let ceuEstrelas = UIImage(named: "ceuestrelas")!
    var fundoCeu = UIImageView()
    let scrollView = UIScrollView()
    let botaoLigacoes = UIButton()
    let botaoDesenhos = UIButton()
    let viewBotoes = UIView()
    let botaoVoltar = UIButton()
    let botaoEstrelas = UIButton()
    
    
    
    public override func loadView() {
        fundoCeu = UIImageView(image: ceuEstrelas)
        self.view = viewBotoes
    } // fecha load view
    
    public override func viewDidLoad() {
        scrollView.frame = CGRect (x: 0, y: 0, width: 1024, height:768)
        scrollView.contentSize = fundoCeu.frame.size
        scrollView.addSubview(fundoCeu)
        scrollView.flashScrollIndicators()
        
        //Botao desenhos Signos
        let botaoDesenhosImagem = UIImage (named: "botaoleao")
        botaoDesenhos.frame = CGRect ( x: 180, y: 680, width: 50, height:50)
        botaoDesenhos.setImage(botaoDesenhosImagem, for: .normal)
        botaoDesenhos.addTarget (nil, action: #selector (tocouDesenhos), for: .touchUpInside)
        
        // botao TELA CEU
        let botaoEstrelasImagem = UIImage (named: "botaoestrela")
        botaoEstrelas.frame = CGRect ( x: 60, y: 680, width: 50, height:50)
        botaoEstrelas.setImage(botaoEstrelasImagem, for: .normal)
        
        // botao Ligacoes
        let botaoLigacoesImagem = UIImage(named: "botaoligacoes")
        botaoLigacoes.setImage(botaoLigacoesImagem, for: .normal)
        botaoLigacoes.frame = CGRect ( x: 120, y: 680, width: 50, height:50)
        botaoLigacoes.addTarget(nil, action: #selector(tocouBotaoLigacoes), for: .touchUpInside)
        
        // botao voltar
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        
        viewBotoes.addSubview(scrollView)
        viewBotoes.addSubview(botaoVoltar)
        viewBotoes.addSubview(botaoEstrelas)
        viewBotoes.addSubview(botaoLigacoes)
        viewBotoes.addSubview(botaoDesenhos)
        self.view.addSubview(botaoEstrelas)
        
    } // fecha view did load
   
    @objc func tocouDesenhos() {
        navigationController?.pushViewController(desenho, animated: false) }
    
    @objc func tocouBotaoLigacoes() {
        navigationController?.pushViewController(ajuda, animated: false) }
    
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
    
    
    
} // fecha classe tela ceu


class TelaAjuda : UIViewController {
    
    // fundo tela ceu - todas as constelacoes
    let ceuLigacoes = UIImage(named: "ceuresposta")!
    var fundoCeu = UIImageView()
    let scrollView = UIScrollView()
    let botaoLigacoes = UIButton()
    let botaoDesenhos = UIButton()
    let viewBotoes = UIView()
    let botaoEstrelas = UIButton()
    
    
    public override func loadView() {
        fundoCeu = UIImageView(image: ceuLigacoes)
        self.view = viewBotoes
    } // fecha load view
    
    public override func viewDidLoad() {
        scrollView.frame = CGRect (x: 0, y: 0, width: 1024, height:768)
        scrollView.contentSize = fundoCeu.frame.size
        scrollView.addSubview(fundoCeu)
        scrollView.flashScrollIndicators()
        
        //Botao desenhos Signos
        let botaoDesenhosImagem = UIImage (named: "botaoleao")
        botaoDesenhos.frame = CGRect ( x: 180, y: 680, width: 50, height:50)
        botaoDesenhos.setImage(botaoDesenhosImagem, for: .normal)
        botaoDesenhos.addTarget (nil, action: #selector (tocouDesenhos), for: .touchUpInside)

        // botao TELA CEU
        let botaoEstrelasImagem = UIImage (named: "botaoestrela")
        botaoEstrelas.frame = CGRect ( x: 60, y: 680, width: 50, height:50)
        botaoEstrelas.setImage(botaoEstrelasImagem, for: .normal)
        botaoEstrelas.addTarget (nil, action: #selector (tocouCeu), for: .touchUpInside)
        
        // botao Ligacoes
        let botaoLigacoesImagem = UIImage(named: "botaoligacoes")
        botaoLigacoes.setImage(botaoLigacoesImagem, for: .normal)
        botaoLigacoes.frame = CGRect ( x: 120, y: 680, width: 50, height:50)
        
        
        
        viewBotoes.addSubview(scrollView)
        viewBotoes.addSubview(botaoEstrelas)
        viewBotoes.addSubview(botaoLigacoes)
        viewBotoes.addSubview(botaoDesenhos)
        self.view.addSubview(botaoEstrelas)
        
    } // fecha view did load
    
    @objc func tocouDesenhos() {
    navigationController?.pushViewController(desenho, animated: false) }
        
    @objc func tocouCeu () {
    navigationController?.popViewController(animated: false) }


} // fecha classe tela ajuda (ligacoes)


public class TelaDesenhos : UIViewController {
    
    // fundo tela ceu - todas as constelacoes
    let ceuSignos = UIImage(named: "telasignos")!
    var fundoCeu = UIImageView()
    let scrollView = UIScrollView()
    let botaoLigacoes = UIButton()
    let botaoDesenhos = UIButton()
    let viewBotoes = UIView()
    let botaoEstrelas = UIButton()
    
    
    public override func loadView() {
        fundoCeu = UIImageView(image: ceuSignos)
        self.view = viewBotoes
    } // fecha load view
    
    public override func viewDidLoad() {
        scrollView.frame = CGRect (x: 0, y: 0, width: 1024, height:768)
        scrollView.contentSize = fundoCeu.frame.size
        scrollView.addSubview(fundoCeu)
        scrollView.flashScrollIndicators()
        
        //Botao desenhos Signos
        let botaoDesenhosImagem = UIImage (named: "botaoleao")
        botaoDesenhos.frame = CGRect ( x: 180, y: 680, width: 50, height:50)
        botaoDesenhos.setImage(botaoDesenhosImagem, for: .normal)
        
        // botao TELA CEU
        let botaoEstrelasImagem = UIImage (named: "botaoestrela")
        botaoEstrelas.frame = CGRect ( x: 60, y: 680, width: 50, height:50)
        botaoEstrelas.setImage(botaoEstrelasImagem, for: .normal)
        botaoEstrelas.addTarget (nil, action: #selector (tocouCeu), for: .touchUpInside)
        
        // botao Ligacoes
        let botaoLigacoesImagem = UIImage(named: "botaoligacoes")
        botaoLigacoes.setImage(botaoLigacoesImagem, for: .normal)
        botaoLigacoes.frame = CGRect ( x: 120, y: 680, width: 50, height:50)
        botaoLigacoes.addTarget(nil, action: #selector(tocouBotaoLigacoes), for: .touchUpInside)
        
        
        
        viewBotoes.addSubview(scrollView)
        viewBotoes.addSubview(botaoEstrelas)
        viewBotoes.addSubview(botaoLigacoes)
        viewBotoes.addSubview(botaoDesenhos)
        self.view.addSubview(botaoEstrelas)
        
    } // fecha view did load
    
    
    @objc func tocouBotaoLigacoes() {
        navigationController?.popViewController(animated: false) }
    
    @objc func tocouCeu () {
    navigationController?.popToViewController(telaCeu, animated: false) }
    
    
    
} // fecha classe tela desenho


let ajuda = TelaAjuda (screenType: .ipad, isPortrait: false)
let desenho = TelaDesenhos (screenType: .ipad, isPortrait: false)
