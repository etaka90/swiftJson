//
//  ViewController.swift
//  parseJSON
//
//  Created by Евгений Демченко on 21.02.2021.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    var selectedName: String = "Anonymous"

    @IBOutlet weak var sumCreditLabel: UITextField!
    @IBOutlet weak var timeCreditLabel: UITextField!
    @IBOutlet weak var percentCreditLabel: UITextField!

    @IBOutlet weak var dosrDatePaymentLabel: UITextField!
    @IBOutlet weak var dosrSumLabel: UITextField!
    @IBOutlet weak var dosrTypeLabel: UITextField!
    
    @IBOutlet weak var firstDateCalendar: UIDatePicker!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? DataTableViewController
        vc?.sumCredit = sumCreditLabel.text ?? "default_value"
        vc?.timeCredit = timeCreditLabel.text ?? "default_value"
        vc?.percentCredit = percentCreditLabel.text ?? "default_value"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        vc?.firstDatePayment =  dateFormatter.string(from: firstDateCalendar.date)
        vc?.dosrDatePayment = dosrDatePaymentLabel.text ?? "default_value"
        vc?.dosrSum = dosrSumLabel.text ?? "default_value"
        vc?.dosrType = dosrTypeLabel.text ?? "default_value"
        
        let monthCount = Double(vc!.timeCredit) ?? 360
        let monthPercent = (Double(vc!.percentCredit)!/1200)
        let aa = Double(1+monthPercent)
        let sum=Double(vc!.sumCredit) ?? 0
        let bb = pow(aa,monthCount)
        let cc = (sum*(monthPercent*bb)/(bb-1))
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = 2
        numberFormatter.minimumFractionDigits = 2
        let s = numberFormatter.string(for: cc)
        vc?.monthPayment = String((s)!)+" руб."

            /*
        А = 4500000*((0,00775*(1,00775)^360)/1,00775^360-1)=
        4500000*((0,00775*16.11)/16,11-1)=4500000*((0,125/15,11))=4500000*0.00827=
        37227
        */
        /*
        if segue.identifier == "btc" {
            let vc = segue.destination as? DataTableViewController
//                   vc?.coinUrl = "https://etakaapi.host/json_btc_last.json"
        } else if segue.identifier == "doge" {
            let vc = segue.destination as? DataTableViewController
  //                 vc?.coinUrl = "https://etakaapi.host/json_doge_last.json"
    }
        else if segue.identifier == "eth" {
            let vc = segue.destination as? DataTableViewController
    //               vc?.coinUrl = "https://etakaapi.host/json_eth_last.json"
    }
 */
    }

}

