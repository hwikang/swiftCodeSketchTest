//
//  ViewController.swift
//  test
//
//  Created by Hwi kang on 2021/01/06.
//

import UIKit
import Apollo

protocol SendDataDelegate {
    func sendData(data:String)
}
class ViewController: UIViewController {
    var delegate: SendDataDelegate?
    @IBOutlet weak var guideButton: UIButton!
    @IBOutlet weak var freeCodeButton: UIButton!
    var data : AppInitQuery.Data.AppInit?
    override func viewDidLoad() {
        super.viewDidLoad()
        requestData()
        
    }
    
    @IBAction func onClickFreeCode(_ sender: UIButton) {
        
//        delegate?.sendData(data: data?.guideLanguage.ko.freeCoding[0].image.url)
        dismiss(animated: true, completion: nil)
//        self.performSegue(withIdentifier: "FreeCodePage", sender: [
//                            "imageUrl": data?.guideLanguage.ko.freeCoding[0].image.url])
//        self.navigationController?.pushViewController(FreeCodeViewController, animated: true)
    }
    
    
//    func requestData(){
//        Network.shared.apollo.fetch(query: AppInitQuery()){ result in
//            switch result{
//                case .success(let graphqlResult):
//                    if let data = graphqlResult.data?.appInit{
//                        self.data = data
//                        print(data)
//                        return
//                    }
//                    if let error = graphqlResult.errors {
//                        print(error.map {$0.localizedDescription })
//                    }
//                case .failure(let error):
//                    print(error.localizedDescription)
//                
//            }
//        }
//    }

}

