//
//  VCFinal.swift
//  DelegatesAndProtocols
//
//  Created by Denis Markov on 7/20/18.
//  Copyright © 2018 Denis Markov. All rights reserved.
//

import UIKit

protocol VCFinalDelegate {
    func finishPassing(string: String)
}

class VCFinal: UIViewController {
    
    var delegate: VCFinalDelegate?

    @IBAction func btnPassDataPressed(_ sender: Any) {
        delegate?.finishPassing(string: "Sent from VCFinal")
    }
    
    

}
