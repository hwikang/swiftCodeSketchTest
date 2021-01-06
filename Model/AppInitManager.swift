//
//  AppInitManager.swift
//  test
//
//  Created by Hwi kang on 2021/01/06.
//

import Foundation
import Apollo
protocol AppInitDelegate {
    func didUpdateAppInit()
    func didFailWithError(error:GraphQLError)
}

struct AppInitManager {
    var delegate: AppInitDelegate?

    
    func fetchData()  {
     
        Network.shared.apollo.fetch(query: AppInitQuery()) { result in
            switch result{
                case .success(let graphqlResult):
                    if let data = graphqlResult.data?.appInit.jsonObject{
                        do {
                            try JSONSerialization.data(withJSONObject: data)
                        } catch <#pattern#> {
                            <#statements#>
                        }
//                        self.delegate?.didUpdateAppInit()
//                        self.data = data
                        print(data)
                        return
                    }
                    if let error = graphqlResult.errors {
                        self.delegate?.didFailWithError(error: error[0])
                        print(error.map {$0.localizedDescription })
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                
            }
        }
      
    }
    
    func parseJSON(data:AppInitQuery.Data) ->AppInitModel?{
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(AppInitModel.self, from: data)
            print(decodedData)
        } catch  {
//            delegate?.didFailWithError(error: error)
           return nil
        }
    }
}
