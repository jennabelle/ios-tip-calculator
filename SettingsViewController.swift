//
//  SettingsViewController.swift
//  ios-tip-calculator
//
//  Created by Jenna Vuong on 9/20/16.
//  Copyright © 2016 Jenna Vuong. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet weak var defaultTipSettings: UISegmentedControl!
    
    @IBOutlet weak var defaultThemeSettings: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // show user-selected default tip when view first loads
        defaultTipSettings.selectedSegmentIndex = UserDefaults.standard.integer(forKey: "default_tip_index")
        
        defaultThemeSettings.selectedSegmentIndex = UserDefaults.standard.integer(forKey: "default_theme_index")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeTipDefault(_ sender: AnyObject) {
        let default_tip_index = defaultTipSettings.selectedSegmentIndex
        
        UserDefaults.standard.set(Int(default_tip_index), forKey: "default_tip_index")
    }
    
    @IBAction func changeThemeDefault(_ sender: AnyObject) {
        let default_theme_index = defaultThemeSettings.selectedSegmentIndex
        
        UserDefaults.standard.set(Int(default_theme_index), forKey: "default_theme_index")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
