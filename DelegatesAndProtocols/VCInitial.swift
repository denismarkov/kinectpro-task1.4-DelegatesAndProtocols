//
//  ViewController.swift
//  DelegatesAndProtocols
//
//  Created by Denis Markov on 7/20/18.
//  Copyright © 2018 Denis Markov. All rights reserved.
//

import UIKit

class VCInitial: UIViewController, VCFinalDelegate {

    @IBAction func btnPerformSeguePressedbtnPerformSeguePressed(_ sender: Any) {
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VCFinal {
            destination.delegate = self
        }
    }
    
    func finishPassing(string: String) {
        print("Notified")
    }
    

}

