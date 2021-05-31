//
//  DataTableViewController.swift
//  parseJSON
//
//  Created by Евгений Демченко on 21.02.2021.
//

import UIKit
import Kingfisher


class DataTableViewController: UITableViewController {
    
    //var coinUrl:String = ""
    var sumCredit:String=""
    var timeCredit:String=""
    var percentCredit:String=""
    var firstDatePayment:String=""
    var dosrDatePayment:String=""
    var dosrSum:String=""
    var dosrType:String=""
    var monthPayment:String=""
    var array = ["1","2","3","4","55","6","7","8","9","1","2","3","4","55","6","7","8","9",
                 "1","2","3","4","55","6","7","8","9","1","2","3","4","55","6","7","8","9","1","2","3","4","55","6","7","8","9"]
    @IBOutlet weak var coinUrlLabel:UILabel?


    override func viewDidLoad() {
     //   let t = performSegue(withIdentifier: "doge", sender: nil)
       
          /*
            P = S*((r*(1+r)^n)/((1+r)^n-1)
                                  r=9,3/12=0.775
                                  А = 4500000*((0,00775*(1,00775)^360)/1,00775^360-1)=
                                  4500000*((0,00775*16.11)/16,11-1)=4500000*((0,125/15,11))=4500000*0.00827=
                                  37227
 */
         //sumCredit+timeCredit+percentCredit+firstDatePayment+dosrDatePayment+dosrSum+dosrType
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let number = array[indexPath.row]
        //cell.textLabel?.text = number
        /*
        cell.textLabel?.text = sumCredit+" | "+timeCredit+" | "+percentCredit+" | "+firstDatePayment+dosrDatePayment+dosrSum+dosrType
        */
        //var a = ((0.00775*(1.00775)^360)/1.00775^360-1)
       
        cell.textLabel?.text = monthPayment + firstDatePayment
        return cell
    }
}
