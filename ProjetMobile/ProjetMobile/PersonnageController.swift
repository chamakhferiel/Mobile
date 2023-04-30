//
//  PersonnageController.swift
//  ProjetMobile
//
//  Created by feriel Chamakh on 23/04/2023.
//

import UIKit
import AVFoundation
import AVKit

class PersonnageController: UIViewController {
    var bruitW : AVAudioPlayer?
    var bruitR : AVAudioPlayer?
    var felicitation : AVAudioPlayer?
    @IBOutlet var button: [UIButton]!
    
    @IBOutlet weak var niveauf: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var scoref: UILabel!
    
    var bonneReponse = 2
    var numquestion = 1
    var score = 0
    var click = 0
    
    @IBOutlet weak var BoutonSuivant: UIButton!
    @IBOutlet weak var affiche: UIImageView!

    @IBOutlet weak var numquestlabel: UILabel!
    @IBOutlet weak var scorelabel: UILabel!
    
 
    @IBOutlet weak var niveaulabel: UILabel!
    @IBOutlet var textlabel: [UILabel]!
    
    @IBAction func Suivante(_ sender: Any) {
        numquestion+=1
        for i in textlabel {
            i.textColor = UIColor.black
        }
        BoutonSuivant.isEnabled = false
        click=0
        switch numquestion{
        
        case 2:
            affiche.image=UIImage(named: "Adolf-Hitler-1933.webp")
            textlabel[0].text = " Charles 10"
            textlabel[1].text = " Hitler"
            textlabel[2].text = " Philippe d'orleans"
            textlabel[3].text = " Macron"
            bonneReponse = 1
            numquestlabel.text = " Question 2 / 12"
            niveaulabel.text=" Niveau : Facile"

        case 3:
            affiche.image=UIImage(named: "Elizabeth_I.jpeg")
            textlabel[0].text = " Charles 10"
            textlabel[1].text = " Elizabeth 2"
            textlabel[2].text = " Marie antoinette"
            textlabel[3].text = " Sissi l'impératrice"
            bonneReponse = 1
            numquestlabel.text = " Question 3 / 12"
            niveaulabel.text=" Niveau : Facile"
        case 4:
            affiche.image=UIImage(named: "poutine.avif")
            textlabel[0].text = " Charles 10"
            textlabel[1].text = " Hitler"
            textlabel[2].text = " Philippe d'orleans"
            textlabel[3].text = " Poutine"
           
            bonneReponse = 3
            numquestlabel.text = " Question 4 / 12"
            niveaulabel.text=" Niveau : Intermediaire"
        case 5:
            affiche.image=UIImage(named: "De_Gaulle.jpeg")
            textlabel[0].text = " charle de gaulle"
            textlabel[1].text = " Hitler"
            textlabel[2].text = " Philippe d'orleans"
            textlabel[3].text = " Poutine"
            bonneReponse = 0
            numquestlabel.text = " Question 5 / 12"
            niveaulabel.text = " Niveau : Intermediaire"
        case 6:
            affiche.image=UIImage(named: "t.jpg")
            textlabel[0].text = " Charle de gaulle"
            textlabel[1].text = " Napoleon"
            textlabel[2].text = " Philippe d'orleans"
            textlabel[3].text = " Poutine"
            bonneReponse = 1
            numquestlabel.text = " Question 6 / 12"
            niveaulabel.text=" Niveau : Intermediaire"
        case 7:
            affiche.image=UIImage(named: "charles-X_Vig.jpg")
            textlabel[0].text = " Charle 10"
            textlabel[1].text = " Louis 16"
            textlabel[2].text = " Philippe d'orleans"
            textlabel[3].text = " Poutine"
            bonneReponse = 0
            numquestlabel.text = " Question 7 / 12"
            niveaulabel.text=" Niveau : Difficile"
        case 8:
            affiche.image=UIImage(named: "Louis XVI.jpeg")
            textlabel[0].text = " Charle 10"
            textlabel[1].text = " Louis 16"
            textlabel[2].text = " Philippe d'orleans"
            textlabel[3].text = " Poutine"
            bonneReponse = 1
            numquestlabel.text = " Question 8 / 12"
            niveaulabel.text=" Niveau : Difficile"
        case 9:
            affiche.image=UIImage(named:"320px-Erzsebet_kiralyne_photo_1867-e1674140633587.webp")
            textlabel[0].text = " Charles 10"
            textlabel[1].text = " Elizabeth 2"
            textlabel[2].text = " Marie antoinette"
            textlabel[3].text = " Sissi l'impératrice"
            bonneReponse = 3
            numquestlabel.text = " Question 9 / 12"
            niveaulabel.text=" Niveau : Difficile"
        case 10:
            affiche.image=UIImage(named:"Marie-Antoinette,_1775_-_Musée_Antoine_Lécuyer.jpg")
            textlabel[0].text = " Charles 10"
            textlabel[1].text = " Elizabeth 2"
            textlabel[2].text = " Marie antoinette"
            textlabel[3].text = " Sissi l'impératrice"
            bonneReponse = 2
            numquestlabel.text = " Question 10 / 12"
            niveaulabel.text=" Niveau : Expert"
        case 11:
            affiche.image=UIImage(named: "Habib_Bourguiba_Portrait.jpg")
            textlabel[0].text = " Charle 10"
            textlabel[1].text = " Bourguiba"
            textlabel[2].text = " Philippe d'orleans"
            textlabel[3].text = " Poutine"
            bonneReponse = 1
            numquestlabel.text = " Question 11 / 12"
            niveaulabel.text=" Niveau : Expert"
        case 12:
            affiche.image=UIImage(named: "Portrait_painting_of_Philippe_of_France,_Duke_of_Orléans_holding_a_crown_of_a_child_of_France_(Pierre_Mignard,_Musée_des_Beaux-Arts_de_Bordeaux).jpg")
            textlabel[0].text = " Charle 10"
            textlabel[1].text = " Bourguiba"
            textlabel[2].text = " Philippe d'orleans"
            textlabel[3].text = " Poutine"
            bonneReponse = 2
            numquestlabel.text = " Question 12 / 12"
            niveaulabel.text=" Niveau : Expert"
            BoutonSuivant.setTitle("Resultat", for: UIControl.State.normal)



        default :
            scorelabel.isHidden  = true
            textlabel[0].isHidden = true
            textlabel[1].isHidden = true
            textlabel[2].isHidden = true
            textlabel[3].isHidden = true
            button[0].isHidden = true
            button[1].isHidden = true
            button[2].isHidden = true
            button[3].isHidden = true
            affiche.isHidden=true
            numquestlabel.text = " "
            niveaulabel.text=" "
            
            BoutonSuivant.isHidden=true
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
            textlabel[sender.tag].textColor = UIColor.green
            BoutonSuivant.isEnabled=true
            if click == 0{
                click = click+1
                bruitR!.play()
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
            
            BoutonSuivant.isEnabled=true
            bruitW!.play()
            textlabel[sender.tag].textColor = UIColor.red
            if click == 0{
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
