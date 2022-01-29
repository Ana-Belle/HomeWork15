//
//  ViewData.swift
//  HomeWork15
//
//  Created by Anastasia Belyakova on 27.01.2022.
//

import Foundation

enum ViewData {
    case initial
    case loading(Data)
    case play(Data)
    case pause(Data)

    struct Data {
        let icon: String?
        let title: String?
        let description: String?
    }
}
