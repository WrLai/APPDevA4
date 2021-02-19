//
//  ViewController.swift
//  Assignment2 & 3
//
//
//I'm using two classes to store my quotes and timer.
//Currently previous button is disabled but the code is still here because it was from assignment 2. However, the alert feature when the quote is entered empty is still there.

import UIKit

class FirstViewController: UIViewController{
    
    
    var x = [Quotation]()
    //var quotes: String = ""
    //var authors: String?
    var index = 0
   
    
    
    @IBOutlet weak var quoteTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var displayBoth: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    //@IBOutlet weak var initialslider: UISlider!
    //@IBOutlet weak var currentTimeLable: UILabel!
    @IBAction func changeVC(_ sender: UIBarButtonItem) {
    }
    
    
    //quote and author
    @IBAction func nextTappedButton(_ sender: UIButton) {
        if x.isEmpty == false {
            index = (index + 1) % x.count
            displayBoth.text = "\"\(x[index].quotesdb)\"" + x[index].authorsdb!
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        x = [Quotation(quotesdb:"This is the first quotation", authorsdb: "quote1"), Quotation(quotesdb: "This isn't the third quotation", authorsdb: "quote2"), Quotation(quotesdb: "This is the third then", authorsdb: "quote3")]
        displayBoth.text = "\"\(x[index].quotesdb)\""  +  x[index].authorsdb!

    }
    
    //Tap the screen, keyboard goes away
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //Same as next button
    
    //Hit return, keyboard goes away
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }

    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if(segue.identifier == "fromFirstViewToSecondView"){
            let secondVC = segue.destination as! AddQuoteViewController
            secondVC.quoteNumber = x.count + 1
        
            print("testing!")
        }}
    
    
    
        @IBAction func unwindSaveFromSecond (segue: UIStoryboardSegue){
            print("unwind1FromSave")
            let vc2 = segue.source as! AddQuoteViewController
            let q = vc2.q
            if q.quotesdb.isEmpty != true {
                if q.authorsdb!.isEmpty == true{
                    q.authorsdb = " Anonymous"
                }
                x.append(q)
            }
        }
    
  

}


