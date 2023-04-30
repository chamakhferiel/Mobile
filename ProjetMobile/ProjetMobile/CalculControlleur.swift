//
//  CalculControlleur.swift
//  ProjetMobile
//
//  Created by feriel Chamakh on 22/04/2023.
//

import UIKit
import AVFoundation
import AVKit


class CalculControlleur: UIViewController {
    var bruitW : AVAudioPlayer?
    var bruitR : AVAudioPlayer?
    var felicitation : AVAudioPlayer?
    @IBOutlet var button: [UIButton]!
    
    var bonneReponse = 0
    var numquestion = 1
    var score = 0
    var click = 0
    @IBOutlet weak var nieaulabel: UILabel!
    @IBOutlet weak var numquestionlabel: UILabel!
    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var niveauf: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet var reponses: [UILabel]!
   
    
    @IBOutlet weak var scoref: UILabel!
    
    
    @IBOutlet weak var boutonSuivant: UIButton!
    
    @IBAction func suivante(_ sender: Any) {
        numquestion+=1
        for i in reponses {
            i.textColor = UIColor.black
        }
        boutonSuivant.isEnabled = false
        click=0
        switch numquestion{
        
        case 2:
            question.text  = " calculer 232 - 30 + 6 = "
            reponses[0].text = " 210"
            reponses[1].text = " 230"
            reponses[2].text = " 208"
            reponses[3].text = " 218"
            bonneReponse = 2
            numquestionlabel.text = " Question 2 / 12"
            nieaulabel.text=" Niveau : Facile"

        case 3:
            question.text  = " calculer 120 * 5 - 20 = "
            reponses[0].text = " 510"
            reponses[1].text = " 580"
            reponses[2].text = " 508"
            reponses[3].text = " 548"
            bonneReponse = 1
            numquestionlabel.text = " Question 3 / 12"
            nieaulabel.text=" Niveau : Facile"
        case 4:
            question.text  = " calculer 120 : 5 = "
            reponses[0].text = " 24"
            reponses[1].text = " 20"
            reponses[2].text = " 28"
            reponses[3].text = " 23"
            bonneReponse = 0
            numquestionlabel.text = " Question 4 / 12"
            nieaulabel.text=" Niveau : Intermediaire"
        case 5:
            question.text  = " calculer 23 * 23 - 5 * 23 = "
            reponses[0].text = " 510"
            reponses[1].text = " 514"
            reponses[2].text = " 414"
            reponses[3].text = " 435"
            bonneReponse = 2
            numquestionlabel.text = " Question 5 / 12"
            nieaulabel.text=" Niveau : Intermediaire"
        case 6:
            question.text  = " calculer 9 * 9 * 9 - 27 = "
            reponses[0].text = " 701"
            reponses[1].text = " 702"
            reponses[2].text = " 598"
            reponses[3].text = " 556"
            bonneReponse = 1
            numquestionlabel.text = " Question 6 / 12"
            nieaulabel.text=" Niveau : Intermediaire"
        case 7:
            question.text  = " calculer 25 * 5 * 2 + 29 * 12 = "
            reponses[0].text = " 599"
            reponses[1].text = " 598"
            reponses[2].text = " 597"
            reponses[3].text = " 596"
            bonneReponse = 1
            numquestionlabel.text = " Question 7 / 12"
            nieaulabel.text=" Niveau : Difficile"
        case 8:
            question.text  = " calculer 120 * 5 - 20 = "
            reponses[0].text = " 510"
            reponses[1].text = " 580"
            reponses[2].text = " 508"
            reponses[3].text = " 548"
            bonneReponse = 1
            numquestionlabel.text = " Question 8 / 12"
            nieaulabel.text=" Niveau : Difficile"
        case 9:
            question.text  = " calculer 121 - 11 * 100 / 20 = "
            reponses[0].text = " 66"
            reponses[1].text = " 77"
            reponses[2].text = " 88"
            reponses[3].text = " 99"
            bonneReponse = 0
            numquestionlabel.text = " Question 9 / 12"
            nieaulabel.text=" Niveau : Difficile"
        case 10:
            question.text  = " Trouver X : 120 * X = 14400"
            reponses[0].text = " 120"
            reponses[1].text = " 125"
            reponses[2].text = " 130"
            reponses[3].text = " 135"
            bonneReponse = 0
            numquestionlabel.text = " Question 10 / 12"
            nieaulabel.text=" Niveau : Expert"
        case 11:
            question.text  = " calculer  X * 9 - 27 = 54"
            reponses[0].text = " 9"
            reponses[1].text = " 8"
            reponses[2].text = " 11"
            reponses[3].text = " 2"
            bonneReponse = 0
            numquestionlabel.text = " Question 11 / 12"
            nieaulabel.text=" Niveau : Expert"
        case 12:
            question.text  = " calculer 14 * 3 X  = 336"
            reponses[0].text = " 9"
            reponses[1].text = " 8"
            reponses[2].text = " 7"
            reponses[3].text = " 5"
            bonneReponse = 1
            numquestionlabel.text = " Question 12 / 12"
            nieaulabel.text=" Niveau : Expert"
            boutonSuivant.setTitle("Resultat", for: UIControl.State.normal)


        default :
            
            question.isHidden=true
            scorelabel.isHidden=true
            reponses[0].isHidden = true
            reponses[1].isHidden = true
            reponses[2].isHidden = true
            reponses[3].isHidden = true
            button[0].isHidden = true
            button[1].isHidden = true
            button[2].isHidden = true
            button[3].isHidden = true
            numquestionlabel.text = " "
            nieaulabel.text=" "
            boutonSuivant.isHidden=true
            niveauf.isHidden=false
            scoref.isHidden=false
            scoref.text=" Votre score est \(score) sur 30"
            
            if score < 0
                {score = 0}
            
            switch score{
            
            case 1...10:
                image.isHidden=false
                image.image=UIImage(named: "peure.jpg")
                niveauf.text="Niveau : Debutant"
                
            case 11...20:
                image.isHidden=false
                
                image.image=UIImage(named: "f.jpeg")
                niveauf.text="Niveau : Intermediaire"
            case 21...26:
                felicitation!.play()
                image.isHidden=false
                image.image=UIImage(named: "f.jpeg")
                niveauf.text="Niveau : Avance"
            case 27...30:
                felicitation!.play()
                image.isHidden=false
                image.image=UIImage(named: "f.jpeg")
                niveauf.text="Niveau : Expert"
            default:
                image.isHidden=false
                image.image=UIImage(named: "peure.jpg")
                niveauf.text="Niveau : Debutant"
            }
        }
        
        
        
    }
    
    
    
    @IBAction func reponse(_ sender: UIButton) {
        print("vous avez clique sur le bouton \(sender.tag)")
        if sender.tag == bonneReponse {
            reponses[sender.tag].textColor = UIColor.green
            boutonSuivant.isEnabled=true
            if click == 0{
                bruitR!.play()
                click = click+1
                switch numquestion{
                    
                case 1,2,3:
                    score = score + 1
                case 4,5,6:
                    score = score + 2
                case 7,8,9:
                    score = score + 3
                case 10,11,12:
                    score = score + 4
                default:
                    scorelabel.isEnabled=true
                }


                scorelabel.text="score = \(score)"
                
            }
        }
        
        else {
            
            boutonSuivant.isEnabled=true
            reponses[sender.tag].textColor = UIColor.red
            if click == 0{
                bruitW!.play()
                click = click+1
                switch numquestion{
                    
                case 1,2,3:
                    score = score - 1
                case 4,5,6:
                    score = score - 2
                case 7,8,9:
                    score = score - 3
                case 10,11,12:
                    score = score - 4
                default:
                    scorelabel.isEnabled=true
                }


                scorelabel.text="score = \(score)"
                
            }
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let chemin = Bundle.main.path(forResource: "wrong", ofType: "mp3")!
        let url=URL(fileURLWithPath: chemin)
        do{
            bruitW = try AVAudioPlayer(contentsOf: url)
        }catch{
            print("erreur a l'initiation du son")
        }
        
        let cheminR = Bundle.main.path(forResource: "bonne", ofType: "mp3")!
        let urlR=URL(fileURLWithPath: cheminR)
        do{
            bruitR = try AVAudioPlayer(contentsOf: urlR)
        }catch{
            print("erreur a l'initiation du son")
        }
        
        let cheminF = Bundle.main.path(forResource: "CRWDApls_Applaudissements 25 50 pers 3 (ID 0814)_LS", ofType: "mp3")!
        let urlF=URL(fileURLWithPath: cheminF)
        do{
            felicitation = try AVAudioPlayer(contentsOf: urlF)
        }catch{
            print("erreur a l'initiation du son")
        }
        // Do any additional setup after loading the view.
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
