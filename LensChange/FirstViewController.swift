//
//  FirstViewController.swift
//  LensChange
//
//  Created by Дима on 16.11.2019.
//  Copyright © 2019 Dima Abramov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var dayLeftTF: UITextField!
    
    
    @IBAction func eyeButton() {
        //MARK: Date Picker
        let dayLeft = Date()
        let calendar = Calendar.current
        let day = calendar.component(.day, from: dayLeft)
        print(day)
    
        
        // MARK: Alert
        let alert = UIAlertController(title: "", message: "Изменить время до замены?", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Да", style: UIAlertAction.Style.default, handler: { action in
            self.dayLeftTF.text = "30 Дней"
            print("date was changed")
        }))
        alert.addAction(UIAlertAction(title: "Отмена", style: UIAlertAction.Style.cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        

        
        // MARK: Button pressed
        print("button was pressed")
//        dayLeftTF.text = "30 Дней"
    }

}

