//
//  FreeCodeViewController.swift
//  test
//
//  Created by Hwi kang on 2021/01/06.
//

import UIKit

class FreeCodeViewController: UIViewController,SendDataDelegate {
    @IBOutlet weak var backgroundImg: UIImageView!

    var imageUrl : String?
    func sendData(data: String) {
        imageUrl = data
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string:imageUrl!)
        if let data = try? Data(contentsOf: url!){
            backgroundImg.image = UIImage(data: data)

        }
        
        
        
    
      
    }
    


}
