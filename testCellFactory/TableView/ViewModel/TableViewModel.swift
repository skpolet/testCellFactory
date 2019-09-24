//
//  TableViewModel.swift
//  testCellFactory
//
//  Created by Sergey Mikhailov on 24/09/2019.
//  Copyright © 2019 MMM. All rights reserved.
//

import UIKit

typealias UserCellConfig = TableCellConfigurator<UserCell, User>
typealias MessageCellConfig = TableCellConfigurator<MessageCell, String>
typealias ImageCellConfig = TableCellConfigurator<ImageCell, URL>

class TableViewModel {
    let items: [CellConfigurator] = [
        UserCellConfig.init(item: User(name: "John Smith", imageName: "user3")),
        
        MessageCellConfig.init(item: "Hi, this is a message text. Tra la la. Tra la la."),
        ImageCellConfig.init(item: Bundle.main.url(forResource: "beach@2x", withExtension: "jpg")!),
        UserCellConfig.init(item:User(name: "Jessica Wood", imageName: "user2")),
        MessageCellConfig.init(item: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
        TableCellConfigurator<WarningCell, String>.init(item: "Hey!! It's a warning!!!!")
    ]
}
