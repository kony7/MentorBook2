//
//  ViewController.swift
//  MentorBook
//
//  Created by SeinaKonishi on 2022/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView:UIImageView!
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var courseLabel:UILabel!
    
    var mentorArray: [Mentor] = []
    
    var index: Int = 0
    
    func setUI(){
        
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", imageNanme: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageNanme: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageNanme: "taithi.jpg", course: "WebS,WebD"))
        
        setUI()
        
    }
    


    @IBAction func mae(){
        
        if index > 0 {
            index -= 1
        }else{
            index = 2
        }
        
        setUI()
        
    }
    
    @IBAction func tugi(){
        
        if index < 2{
            index += 1
        }else{
            index = 0
        }
        
        setUI()
        
    }

}

