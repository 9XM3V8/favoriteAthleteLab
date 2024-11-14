//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Dylan on 11/13/24.
//

import UIKit

class AthleteFormViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    var athlete: Athlete?
    
    required init?(coder: NSCoder) {
            super.init(coder: coder)
        }
    
    init?(coder: NSCoder, athlete: Athlete?){
        self.athlete = athlete
        
        super.init(coder: coder)
        }
    
    func updateView() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    @IBAction func saveAthlete(_ sender: Any) {
        guard let name = nameTextField.text,
              let ageString = ageTextField.text,
              let age = Int(ageString),
              let league = leagueTextField.text,
              let team = teamTextField.text else{
            print(nameTextField.text, ageTextField.text, leagueTextField.text, teamTextField.text)
            return }
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        
        performSegue(withIdentifier: "unwind", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
