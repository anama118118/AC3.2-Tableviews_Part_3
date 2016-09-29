//
//  MovieCastDetailViewController.swift
//  Tableviews_Part_3
//
//  Created by Ana Ma on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieCastDetailViewController: UIViewController {
    var selectedMovie: Movie! 
    
    @IBOutlet weak var castTitleLabel: UILabel!
    @IBOutlet weak var castListLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateViews(for: selectedMovie)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func updateViews(for movie: Movie) {
        var actorList: String = ""
        for actor in movie.cast {
            actorList += "- \(actor.firstName) \(actor.lastName) \n"
        }
        self.castListLabel.text = actorList
    }

}
