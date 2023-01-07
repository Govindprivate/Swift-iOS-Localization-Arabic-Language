//
//  ViewController.swift
//  Arabic-Localization
//
//  Created by GOVIND KUMAR on 07/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiConfig()
    }
    func uiConfig(){
        labelTitle.text = "title".localized
        labelDetail.text = "detail".localized
    }
    @IBAction func actionSwitchLanguage(_ sender: UIButton) {
        if let lang = LocalizationManager.shared.getLanguage() {
            switch lang {
            case .English:
                LocalizationManager.shared.setLanguage(language: .Arabic)
            case .Arabic:
                LocalizationManager.shared.setLanguage(language: .English)
            }
        }
    }
}

