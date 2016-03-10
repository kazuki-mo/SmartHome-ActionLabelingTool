//
//  DataModel.swift
//  ActionLabelingTool
//
//  Created by 守谷 一希 on 2016/03/09.
//  Copyright © 2016年 守谷 一希. All rights reserved.
//

import Foundation

class DataModel : NSObject {
    var date:String
    var action:String
    
    init(date:String, action:String){
        
        self.date = date
        self.action = action
        
    }
    
}
