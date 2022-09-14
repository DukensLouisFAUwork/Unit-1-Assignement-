//
//  MovieDetailsViewController.swift
//  Unit 1
//
//  Created by dwork on 9/13/22.
//

import UIKit
import Alamofire
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var backDrop: UIImageView!
    
    @IBOutlet weak var posterview: UIImageView!
   
    
    @IBOutlet weak var titlelabel: UILabel!
    
    
    @IBOutlet weak var synopsisview: UILabel!
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titlelabel.text = movie["title"] as? String
        titlelabel.sizeToFit()
        
        synopsisview.text = movie["overview"] as? String
        synopsisview.sizeToFit()
        
        let baseUrl = "http://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterview.af.setImage(withURL: posterUrl!)

        let backdropppath = movie["poster_path"] as! String
        let backdropurl = URL(string: "http://image.tmdb.org/t/p/w780" + backdropppath)

        // Do any additional setup after loading the view.
        backDrop.af.setImage(withURL: backdropurl!)
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
