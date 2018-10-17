//
//  MockActionSheetItem.swift
//  SheeeeeeeeetTests
//
//  Created by Daniel Saidi on 2018-10-17.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

import Sheeeeeeeeet

class MockActionSheetItem: ActionSheetItem {
    
    var applyAppearanceInvokeCount = 0
    var applyAppearanceInvokeAppearances = [ActionSheetAppearance]()
    var handleTapInvokeCount = 0
    var handleTapInvokeActionSheets = [ActionSheet]()
    
    var cell: UITableViewCell?
    
    override func applyAppearance(_ appearance: ActionSheetAppearance) {
        applyAppearanceInvokeCount += 1
        applyAppearanceInvokeAppearances.append(appearance)
    }
    
    override func handleTap(in actionSheet: ActionSheet) {
        handleTapInvokeCount += 1
        handleTapInvokeActionSheets.append(actionSheet)
    }
    
    override func cell(for tableView: UITableView) -> UITableViewCell {
        return cell!
    }
}
