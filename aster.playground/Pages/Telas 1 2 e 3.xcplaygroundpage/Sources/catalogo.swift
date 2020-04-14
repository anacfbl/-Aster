
import Foundation
import UIKit
import PlaygroundSupport


public class Catalogo : UIViewController {
    public override func loadView() {
        let view = UIView()
        self.view = view
        
        // fundo tela catalogo
        let catalogoimagem = UIImage (named: "catalogo")!
        let telaCatalogo = UIImageView (image: catalogoimagem)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        // botao TELA CEU
        let botaoCeu = UIButton ()
        let botaoCeuImagem = UIImage (named: "asset")
        botaoCeu.frame = CGRect ( x: 60, y: 680, width: 50, height:50)
        botaoCeu.setImage(botaoCeuImagem, for: .normal)
        botaoCeu.addTarget (nil, action: #selector (tocouCeu), for: .touchUpInside)
        
        // botao LEO
        let botaoLeo = UIButton ()
        botaoLeo.frame = CGRect (x: 270, y: 470, width: 72, height:72)
        //        botaoLeo.backgroundColor = .black
        botaoLeo.addTarget (nil, action: #selector (tocouLeo), for: .touchUpInside)
        
        // botao VIRGO
        let botaoVirgo = UIButton ()
        botaoVirgo.frame = CGRect (x: 400, y: 470, width: 87, height:72)
        //        botaoVirgo.backgroundColor = .black
        botaoVirgo.addTarget (nil, action: #selector (tocouVirgo), for: .touchUpInside)
        
        // botao CANCER
        let botaoCancer = UIButton ()
        botaoCancer.frame = CGRect ( x: 170, y: 450, width: 75, height:65)
        //        botaoCancer.backgroundColor = .black
        botaoCancer.addTarget (nil, action: #selector (tocouCancer), for: .touchUpInside)
        
        // botao LIBRA
        let botaoLibra = UIButton ()
        botaoLibra.frame = CGRect ( x: 520, y: 460, width: 75, height:65)
        //        botaoLibra.backgroundColor = .black
        botaoLibra.addTarget (nil, action: #selector (tocouLibra), for: .touchUpInside)
        
        // botao ESCORPIAO
        let botaoEscorpiao = UIButton ()
        botaoEscorpiao.frame = CGRect ( x: 650, y: 430, width: 85, height:75)
        //        botaoEscorpiao.backgroundColor = .black
        botaoEscorpiao.addTarget (nil, action: #selector (tocouEscorpiao), for: .touchUpInside)
        
        // botao SAGITARIO
        let botaoSagitario = UIButton ()
        botaoSagitario.frame = CGRect ( x: 770, y: 390, width: 85, height:70)
        //                botaoSagitario.backgroundColor = .black
        botaoSagitario.addTarget (nil, action: #selector (tocouSagitario), for: .touchUpInside)
        
        
        // botao GEMINI
        let botaoGemini = UIButton ()
        botaoGemini.frame = CGRect ( x: 190, y: 330, width: 80, height:70)
        //        botaoGemini.backgroundColor = .black
        botaoGemini.addTarget (nil, action: #selector (tocouGemini), for: .touchUpInside)
        
        // botao TOURO
        let botaoTouro = UIButton ()
        botaoTouro.frame = CGRect ( x: 310, y: 290, width: 85, height:60)
        //        botaoTouro.backgroundColor = .black
        botaoTouro.addTarget (nil, action: #selector (tocouTouro), for: .touchUpInside)
        
        
        // botao ARIES
        let botaoAries = UIButton ()
        botaoAries.frame = CGRect ( x: 420, y: 270, width: 85, height:60)
        //        botaoAries.backgroundColor = .black
        botaoAries.addTarget (nil, action: #selector (tocouAries), for: .touchUpInside)
        
        // botao PEIXE
        let botaoPeixe = UIButton ()
        botaoPeixe.frame = CGRect ( x: 530, y: 260, width: 80, height:70)
        //               botaoPeixe.backgroundColor = .black
        botaoPeixe.addTarget (nil, action: #selector (tocouPeixe), for: .touchUpInside)
        
        // botao AQUARIO
        let botaoAquario = UIButton ()
        botaoAquario.frame = CGRect ( x: 650, y: 260, width: 85, height:60)
        //               botaoAquario.backgroundColor = .black
        botaoAquario.addTarget (nil, action: #selector (tocouAquario), for: .touchUpInside)
        
        // botao CAPRICORNIO
        
        let botaoCapricornio = UIButton ()
        botaoCapricornio.frame = CGRect ( x: 760, y: 270, width: 75, height:65)
        //           botaoCapricornio.backgroundColor = .black
        botaoCapricornio.addTarget (nil, action: #selector (tocouCapricornio), for: .touchUpInside)
        
        
        
        // views
        view.addSubview(telaCatalogo)
        view.addSubview(botaoLeo)
        view.addSubview(botaoVirgo)
        view.addSubview(botaoCancer)
        view.addSubview(botaoLibra)
        view.addSubview(botaoEscorpiao)
        view.addSubview(botaoSagitario)
        view.addSubview(botaoGemini)
        view.addSubview(botaoTouro)
        view.addSubview(botaoAries)
        view.addSubview(botaoPeixe)
        view.addSubview(botaoAquario)
        view.addSubview(botaoCapricornio)
        view.addSubview(botaoCeu)
        view.addSubview(botaoVoltar)
        
        
        
    } // fecha load view
    
    
    // funcoes botoes
    
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
    
    @objc func tocouCeu () {
        navigationController?.pushViewController(telaCeu, animated: false) }
    
    @objc func tocouLeo () {
        navigationController?.pushViewController(leo, animated: false) }
    
    @objc func tocouVirgo () {
        navigationController?.pushViewController(virgo, animated: false) }
    
    @objc func tocouCancer () {
        navigationController?.pushViewController(cancer, animated: false) }
    
    @objc func tocouLibra () {
        navigationController?.pushViewController(libra, animated: false) }
    
    @objc func tocouEscorpiao () {
        navigationController?.pushViewController(escorpiao, animated: false) }
    
    @objc func tocouSagitario () {
        navigationController?.pushViewController(sagitario, animated: false) }
    
    @objc func tocouGemini () {
        navigationController?.pushViewController(gemini, animated: false) }
    
    @objc func tocouTouro () {
        navigationController?.pushViewController(touro, animated: false) }
    
    @objc func tocouAries () {
        navigationController?.pushViewController(aries, animated: false) }
    
    @objc func tocouPeixe () {
        navigationController?.pushViewController(peixe, animated: false) }
    
    @objc func tocouAquario () {
        navigationController?.pushViewController(aquario, animated: false) }
    
    @objc func tocouCapricornio () {
        navigationController?.pushViewController(capricornio, animated: false) }
    
    
    
} // fecha classe catalogo




// CLASSES::
class Leo: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let leoTexto = UIImage(named: "leotexto")!
        let leoTela = UIImageView(image: leoTexto)
        
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (leoTela)
        view.addSubview(botaoVoltar)
        
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha leo

class Virgo: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let virgoTexto = UIImage(named: "virgotexto")!
        let virgoTela = UIImageView(image: virgoTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (virgoTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha virgo

class Cancer: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let cancerTexto = UIImage(named: "cancertexto")!
        let cancerTela = UIImageView(image: cancerTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (cancerTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha cancer


class Libra: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let libraTexto = UIImage(named: "libratexto")!
        let libraTela = UIImageView(image: libraTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (libraTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha libra

class Escorpiao: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let escorpiaoTexto = UIImage(named: "escorpiaotexto")!
        let escorpiaoTela = UIImageView(image: escorpiaoTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (escorpiaoTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha escorpiao

class Sagitario: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let sagitarioTexto = UIImage(named: "sagitariotexto")!
        let sagitarioTela = UIImageView(image: sagitarioTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (sagitarioTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha sagitario

class Gemini: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let geminiTexto = UIImage(named: "geminitexto")!
        let geminiTela = UIImageView(image: geminiTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (geminiTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha gemini

class Touro: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let touroTexto = UIImage(named: "tourotexto")!
        let touroTela = UIImageView(image: touroTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (touroTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha touro

class Aries: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let ariesTexto = UIImage(named: "ariestexto")!
        let ariesTela = UIImageView(image: ariesTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (ariesTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha aries

class Peixe: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let peixeTexto = UIImage(named: "peixetexto")!
        let peixeTela = UIImageView(image: peixeTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (peixeTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha cancer

class Aquario: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let aquarioTexto = UIImage(named: "aquariotexto")!
        let aquarioTela = UIImageView(image: aquarioTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (aquarioTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController (animated: false) }
} // fecha aquario


class Capricornio: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let capricornioTexto = UIImage(named: "capricorniotexto")!
        let capricornioTela = UIImageView(image: capricornioTexto)
        
        // botao voltar
        let botaoVoltar = UIButton ()
        let botaoVoltarImagem = UIImage (named: "botaovoltar")
        botaoVoltar.frame = CGRect ( x: 25, y: 30, width: 100, height:37)
        botaoVoltar.setImage(botaoVoltarImagem, for: .normal)
        botaoVoltar.addTarget (nil, action: #selector (tocouVoltar), for: .touchUpInside)
        
        view.addSubview (capricornioTela)
        view.addSubview(botaoVoltar)
        
    } // fecha load view
    @objc func tocouVoltar () {
        navigationController?.popViewController(animated: false) }
} // fecha capricornio






let catalogo = Catalogo (screenType: .ipad, isPortrait: false)
let leo = Leo (screenType: .ipad, isPortrait: false)
let virgo = Virgo (screenType: .ipad, isPortrait: false)
let cancer = Cancer (screenType: .ipad, isPortrait: false)
let libra = Libra (screenType: .ipad, isPortrait: false)
let escorpiao = Escorpiao (screenType: .ipad, isPortrait: false)
let sagitario = Sagitario (screenType: .ipad, isPortrait: false)
let gemini = Gemini (screenType: .ipad, isPortrait: false)
let touro = Touro (screenType: .ipad, isPortrait: false)
let aries = Aries (screenType: .ipad, isPortrait: false)
let peixe = Peixe (screenType: .ipad, isPortrait: false)
let aquario = Aquario (screenType: .ipad, isPortrait: false)
let capricornio = Capricornio (screenType: .ipad, isPortrait: false)
let telaCeu = TelaCeu (screenType: .ipad, isPortrait: false)



