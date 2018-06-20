//
//  ViewController.swift
//  MentorBook
//
//  Created by Marina Goto on 2018/06/13.
//  Copyright © 2018年 lifeistech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "まりもん", imageName: "marimon.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "マルビル", imageName: "marubiru.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "ロバート", imageName: "robert.jpg", course: "iPhone"))
        setUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae() {
        index = index - 1
        setUI()
    }
    
    @IBAction func tugi() {
        index = index + 1
        setUI()
    }


}

