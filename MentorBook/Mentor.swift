//
//  Mentor.swift
//  MentorBook
//
//  Created by SeinaKonishi on 2022/02/10.
//

import UIKit

class Mentor{
    
    var name:String!
    var course:String!
    var imageName:String!
    
    init(name: String, imageNanme: String, course: String) {
        self.name = name
        self.imageName = imageNanme
        self.course = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
