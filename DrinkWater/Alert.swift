//
//  Alert.swift
//  DrinkWater
//
//  Created by 🙈 🙊 on 2022/05/29.
//

import Foundation


struct Alert: Codable {
    var id:String = UUID().uuidString
    let date: Date
    var isOn: Bool
    
    //시간설정 코드
    var time:String {
        let timeFormater = DateFormatter()
        timeFormater.dateFormat = "hh:mm"
        return timeFormater.string(from: date)
    }
    
    // 한국의 오전오후 시간 확인
    var meridiem:String {
        let  meridiemFormater = DateFormatter()
        meridiemFormater.dateFormat = "a"
        meridiemFormater.locale = Locale(identifier: "ko")
        return meridiemFormater.string(from: date)
    }
    
}
