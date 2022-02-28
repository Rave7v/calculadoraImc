
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valorAltura: UILabel!
    @IBOutlet weak var valorPeso: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcularBtn(_ sender: UIButton) {
        print("calcular")
        performSegue(withIdentifier: "calcular", sender: self)
    }
    
    @IBAction func sliderAltura(_ sender: UISlider) {
        //print(sender.value)
        valorAltura.text = "\(String(format: "%.2f", sender.value)) cm"
    }
    
    @IBAction func sliderPeso(_ sender: UISlider) {
        valorPeso.text = "\(String(format: "%.1f", sender.value)) kg"
    }
}

