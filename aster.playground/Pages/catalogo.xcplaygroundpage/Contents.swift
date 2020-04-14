
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
        
        // botao TELA CEU
        let botaoCeu = UIButton ()
        botaoCeu.frame = CGRect (x: 270, y: 470, width: 72, height:72)
        botaoCeu.backgroundColor = .black
//        botaoCeu.addTarget (nil, action: #selector (tocouCeu), for: .touchUpInside)
        
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
        
        
        
    } // fecha load view
    
    
    // funcoes botoes
    
//    @objc func tocouCeu () {
//        navigationController?.pushViewController(telaCeu, animated: true) }
    
    @objc func tocouLeo () {
        navigationController?.pushViewController(leo, animated: true) }
    
    @objc func tocouVirgo () {
        navigationController?.pushViewController(virgo, animated: true) }
    
    @objc func tocouCancer () {
        navigationController?.pushViewController(cancer, animated: true) }
    
    @objc func tocouLibra () {
        navigationController?.pushViewController(libra, animated: true) }
    
    @objc func tocouEscorpiao () {
        navigationController?.pushViewController(escorpiao, animated: true) }
    
    @objc func tocouSagitario () {
        navigationController?.pushViewController(sagitario, animated: true) }
    
    @objc func tocouGemini () {
        navigationController?.pushViewController(gemini, animated: true) }
    
    @objc func tocouTouro () {
        navigationController?.pushViewController(touro, animated: true) }
    
    @objc func tocouAries () {
        navigationController?.pushViewController(aries, animated: true) }
    
    @objc func tocouPeixe () {
        navigationController?.pushViewController(peixe, animated: true) }
    
    @objc func tocouAquario () {
        navigationController?.pushViewController(aquario, animated: true) }
    
    @objc func tocouCapricornio () {
        navigationController?.pushViewController(capricornio, animated: true) }

    
    
}// fecha classe catalogo



// CLASSES::
class Leo: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let leoTexto = UIImage(named: "leotexto")!
        let leoTela = UIImageView(image: leoTexto)
        
        view.addSubview (leoTela)
    } // fecha load view
} // fecha leo

class Virgo: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let virgoTexto = UIImage(named: "virgotexto")!
        let virgoTela = UIImageView(image: virgoTexto)
        
        view.addSubview (virgoTela)
    } // fecha load view
} // fecha virgo

class Cancer: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let cancerTexto = UIImage(named: "cancertexto")!
        let cancerTela = UIImageView(image: cancerTexto)
        
        view.addSubview (cancerTela)
    } // fecha load view
} // fecha cancer


class Libra: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let libraTexto = UIImage(named: "libratexto")!
        let libraTela = UIImageView(image: libraTexto)
        
        view.addSubview (libraTela)
    } // fecha load view
} // fecha libra

class Escorpiao: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let escorpiaoTexto = UIImage(named: "escorpiaotexto")!
        let escorpiaoTela = UIImageView(image: escorpiaoTexto)
        
        view.addSubview (escorpiaoTela)
    } // fecha load view
} // fecha escorpiao

class Sagitario: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let sagitarioTexto = UIImage(named: "sagitariotexto")!
        let sagitarioTela = UIImageView(image: sagitarioTexto)
        
        view.addSubview (sagitarioTela)
    } // fecha load view
} // fecha sagitario

class Gemini: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let geminiTexto = UIImage(named: "geminitexto")!
        let geminiTela = UIImageView(image: geminiTexto)
        
        view.addSubview (geminiTela)
    } // fecha load view
} // fecha gemini

class Touro: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let touroTexto = UIImage(named: "tourotexto")!
        let touroTela = UIImageView(image: touroTexto)
        
        view.addSubview (touroTela)
    } // fecha load view
} // fecha touro

class Aries: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let ariesTexto = UIImage(named: "ariestexto")!
        let ariesTela = UIImageView(image: ariesTexto)
        
        view.addSubview (ariesTela)
    } // fecha load view
} // fecha aries

class Peixe: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let peixeTexto = UIImage(named: "peixetexto")!
        let peixeTela = UIImageView(image: peixeTexto)
        
        view.addSubview (peixeTela)
    } // fecha load view
} // fecha cancer

class Aquario: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let aquarioTexto = UIImage(named: "aquariotexto")!
        let aquarioTela = UIImageView(image: aquarioTexto)
        
        view.addSubview (aquarioTela)
    } // fecha load view
} // fecha aquario


class Capricornio: UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
        
        let capricornioTexto = UIImage(named: "capricorniotexto")!
        let capricornioTela = UIImageView(image: capricornioTexto)
        
        view.addSubview (capricornioTela)
    } // fecha load view
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

