//
//  MainViewModel.swift
//  HomeWork15
//
//  Created by Anastasia Belyakova on 27.01.2022.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData)->())? { get set }
    func startFetch()
    func error()
}

final class MainViewModel: MainViewModelProtocol {
    public var updateViewData: ((ViewData) -> ())?

    init() {
        updateViewData?(.initial)
    }

    public func error() {
        updateViewData?(.pause(ViewData.Data(icon: "pause",
                                             title: "Pause",
                                             description: "")))
    }

    public func startFetch() {
        updateViewData?(.play(ViewData.Data(icon: "play",
                                            title: "Play",
                                            description: "")))
    }
}
