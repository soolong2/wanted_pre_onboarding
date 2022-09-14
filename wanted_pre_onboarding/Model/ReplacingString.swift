//
//  String.swift
//  wanted_pre_onboarding
//
//  Created by so on 2022/09/14.
//

import Foundation
//["gongju","Gwangju", "gumi", "gunsan", "daegu", "daejeon", "mokpo", "busan", "seosan", "seoul", "sokcho", "suwon", "suncheon", "ulsan", "iksan", "jeonju", "jejusi", "cheonan", "cheongju", "chuncheon"]
extension String {
    
    func replacingString() -> String {
        if self == "Gongju" {
            return "공주"
        } else if self == "Gwangju" {
            return "광주"
        } else if self == "Mokpo" {
            return "목포"
        } else if self == "Gumi" {
            return "구미"
        } else if self == "Gunsan" {
            return "군산"
        } else if self == "Daegu" {
            return "대구"
        } else if self == "Daejeon" {
            return "대전"
        } else if self == "Seosan City" {
            return "서산"
        } else if self == "Busan" {
            return "부산"
        } else if self == "Seoul"{
            return "서울"
        } else if self == "Sokcho" {
            return "속초"
        } else if self == "Suwon-si" {
            return "수원"
        } else if self == "Suncheon"{
            return "순천"
        } else if self == "Ulsan"{
            return "울산"
        } else if self == "Iksan"{
            return "익산"
        } else if self == "Jeonju"{
            return "전주"
        } else if self == "Jeju City"{
            return "제주시"
        } else if self == "Cheonan"{
            return "천안"
        } else if self == "Cheongju-si"{
            return "청주"
        } else if self == "Chuncheon"{
            return "춘천"
        } else if self == "KR"{
            return "한국"
        }
        
        return ""
    }
}
