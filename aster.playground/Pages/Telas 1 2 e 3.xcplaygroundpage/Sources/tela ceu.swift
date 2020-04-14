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
//        botaoDesenhos.addTarget (nil, action: #selector (tocouBotaoHistorias), for: .touchUpInside)
        
        // botao TELA CEU
        let botaoEstrelasImagem = UIImage (named: "botaoestrela")
        botaoEstrelas.frame = CGRect ( x: 60, y: 680, width: 50, height:50)
        botaoEstrelas.setImage(botaoEstrelasImagem, for: .normal)
//        botaoEstrelas.addTarget (nil, action: #selector (tocouCeu), for: .touchUpInside)
        
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
        self.view.addSubview(botaoVoltar)
        
    } // fecha view did load
//    @objc func tocouBotaoHistorias () {
//        navigationController?.pushViewController(catalogo, animated: false)    } // fecha funcao tocoubotaohistoria
//
    @objc func tocouBotaoLigacoes() {
        navigationController?.pushViewController(ajuda, animated: false)    }// fecha ajuda down
    
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
    
    
    
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


let ajuda = TelaAjuda (screenType: .ipad, isPortrait: false)

