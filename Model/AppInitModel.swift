//
//  AppInitModel.swift
//  test
//
//  Created by Hwi kang on 2021/01/06.
//

import Foundation

struct AppInitModel :Codable {
    let bgAudioUrls : [String]
    let codingUrl :String
    let guideLanguage : GuideLanguageModel
}

struct GuideLanguageModel :Codable {
    let en : GuideModel
    let ko : GuideModel
    
}
struct GuideModel :Codable {
    let coding : [ImageViewModel]
    let freeCoding :[ImageViewModel]
    let main :[ImageViewModel]
    let project :[ImageViewModel]
    let uploadCodingTip:ImageViewModel
}


struct ImageViewModel :Codable {
    let url:String
}
