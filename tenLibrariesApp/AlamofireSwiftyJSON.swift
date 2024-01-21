//
//  AlamofireSwiftyJSON.swift
//  tenLibrariesApp
//
//  Created by asmaa gamal  on 21/01/2024.
//
import Alamofire
import SwiftyJSON
import Foundation
class AlamofireSwiftyJSON:ObservableObject{
    static let shared = AlamofireSwiftyJSON()
    @Published var data: YourDataModel?
    private init(){
        fetchData()
    }
    
    func fetchData() {
            let apiUrl = "https://bitcoinaverage-global-ethereum-index-v1.p.rapidapi.com/indices/local/ticker/ETHUSD/changes"
        let headers: HTTPHeaders = [
                 "X-RapidAPI-Key": "8a47dda633mshc50d0d1f4c16f9fp1cab33jsn7b7ecb0ee4a6",
                 "X-RapidAPI-Host": "bitcoinaverage-global-ethereum-index-v1.p.rapidapi.com"
             ]
            // Make the network request using Alamofire
        AF.request(apiUrl, headers: headers).responseDecodable(of: YourDataModel.self) { response in


                // Handle the response
            switch response.result {
                   case .success(let value):
                       print("Success response value: \(value)")

                       // Print the raw data
                       if let rawData = response.data {
                           print("Raw data: \(rawData)")

                           // Decode JSON to your data model
                           do {
                               let dataModel = try JSONDecoder().decode(YourDataModel.self, from: rawData)
                               print("Decoded data model: \(dataModel)")

                               // Update the UI on the main thread
                               DispatchQueue.main.async {
                                   self.data = dataModel
                                   
                               }
                           } catch {
                               print("Error decoding data: \(error)")
                           }
                       } else {
                           print("Failed to get raw data from response.")
                       }

                   case .failure(let error):
                       print("Error fetching data: \(error)")
                   }
               }
           }
    
}
