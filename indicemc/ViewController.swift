
import UIKit

class ViewController: UIViewController {

    
    var altura:Double = 1.6
    var peso:Double = 75
    var imc:Double = 0.0
    @IBOutlet weak var valorAltura: UILabel!
    @IBOutlet weak var valorPeso: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcularBtn(_ sender: UIButton) {
        print("calcular")
        performSegue(withIdentifier: "calcular", sender: self)
        imc = peso / (altura * altura)
        print(imc)
    }
    
    @IBAction func sliderAltura(_ sender: UISlider) {
        //print(sender.value)
        valorAltura.text = "\(String(format: "%.2f", sender.value)) m"
        altura = Double(sender.value)
    }
    
    @IBAction func sliderPeso(_ sender: UISlider) {
        valorPeso.text = "\(String(format: "%.1f", sender.value)) kg"
        peso = Double(sender.value)
    }
}

