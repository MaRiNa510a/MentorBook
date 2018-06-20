//
//  Mentor.swift
//  MentorBook
//
//  Created by Marina Goto on 2018/06/14.
//  Copyright © 2018年 lifeistech. All rights reserved.
//

import UIKit

class Mentor {
    
    var name: String!
    
    var course: String!
    
    var imageName: String!
    
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
