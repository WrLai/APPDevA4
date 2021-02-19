//
//  AddQuoteViewController.swift
//  Assignment2
//
//  Created by Weiren Lai on 2/18/21.
//

import UIKit

class AddQuoteViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var quoteNum: UILabel!
    var messageFromFirstViewString: String?
    var secondViewText: String?
    var q: Quotation = Quotation(quotesdb: "Q1", authorsdb: "A1")
    
    //var myTimer = MyTimer()
    //var timer = Timer()
//    var quotationsAreHere = []
//    var authorsAreHere = []
    
    var index = 0
    
    @IBOutlet weak var messageFromFirstViewLabel: UILabel!
    @IBOutlet weak var quoteTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    var quotes: String?
    var authors: String?
    var quoteNumber = 1

    
    @IBAction func saveQuotesAndAuthor(_ sender: UIBarButtonItem) {

    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        quoteTextField.endEditing(true)
        authorTextField.endEditing(true)
        self.view.endEditing(true)
        print("something should go in here")
        q.authorsdb = authorTextField.text
        q.quotesdb = quoteTextField.text!
        print("data in")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteTextField.delegate = self
        authorTextField.delegate = self
        quoteNum.text = "Quotation #" + "\(quoteNumber)"
    }

    
    
    //User it when the user doesn't input
    

}
