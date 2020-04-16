import Foundation
import UIKit
import PlaygroundSupport

public class QuartaTela : UIViewController {
    public override func loadView() {
        let view = UIView()
        self.view = view
        
        
        // fundo tela 4 - so o ceu
        let tela4Imagem = UIImage(named: "soceu")!
        let Tela4 = UIImageView(image: tela4Imagem)
       
        
        
        
        // botao HISTORIAS
        let botaoHistoriaImagem = UIImage (named: "historiasbotao-8")
        let botaohistoria = UIButton ()
        botaohistoria.setImage(botaoHistoriaImagem, for: .normal)
        botaohistoria.frame = CGRect ( x: 420, y: 420, width: 161, height:43)
        
        botaohistoria.addTarget (nil, action: #selector (tocouBotaoHistoria), for: .touchUpInside)
        
        
        
        // botao CONTELACOES
        let botaoConstelacoesImagem = UIImage (named: "botaoconstelacoes-8")
        let botaoConstelacoes = UIButton ()
        botaoConstelacoes.frame = CGRect ( x: 420, y: 350, width: 161, height:43)
        botaoConstelacoes.setImage(botaoConstelacoesImagem, for: .normal)
        
        botaoConstelacoes.addTarget (nil, action: #selector (tocouBotaoConstelacoes), for: .touchUpInside)
        
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        
    
        
        
        
        
        view.addSubview (Tela4)
        view.addSubview (botaoConstelacoes)
        view.addSubview(botaohistoria)
        view.addSubview(botaoVoltar)

        
    
    } // fecha load view
    
    @objc func tocouBotaoHistoria () {
        navigationController?.pushViewController(catalogo, animated: false) }
    
    @objc func tocouBotaoConstelacoes () {
        navigationController?.pushViewController(telaCeu, animated: false) }
   
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
        
    }
    

