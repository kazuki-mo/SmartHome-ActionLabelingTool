//
//  DBModel.swift
//  ActionLabelingTool
//
//  Created by 守谷 一希 on 2016/03/09.
//  Copyright © 2016年 守谷 一希. All rights reserved.
//

import Foundation

class DBModel {
    
    init() {
        let (tb, _) = SD.existingTables()
        if !tb.contains("actionlabel") {
            if let _ = SD.createTable("actionlabel", withColumnNamesAndTypes: ["date": .StringVal,"action":.StringVal]) {
                //there was an error during this function, handle it here
            } else {
                //no error, the table was created successfully
            }
        }
        print(SD.databasePath())
    }
    
    // DBに挿入
    func add(data:DataModel)->Int{
        var result: Int? = nil
        if let _ = SD.executeChange("INSERT INTO actionlabel (date,action) VALUES (?,?)", withArgs: [data.date,data.action]) {
            //there was an error during the insert, handle it here
        } else {
            //no error, the row was inserted successfully
            let (id, err) = SD.lastInsertedRowID()
            if err != nil {
                //err
            }else{
                //ok
                result = id
            }
        }
        return result!
    }
    
    // DB内データの最新5件を取得
    func getAll()->NSMutableArray {
        let result = NSMutableArray()
        let (resultSet, err) = SD.executeQuery("SELECT * FROM actionlabel ORDER BY ID DESC LIMiT 5")
        _ = NSDateFormatter()
        if err != nil {
            
        } else {
            for row in resultSet {
                if let id = row["ID"]?.asInt() {
                    let date = row["date"]?.asString()!
                    let action = row["action"]?.asString()!
                    let dic = ["ID":id,"date":date!,"action":action!]
                    result.addObject(dic)
                }
            }
        }
        return result
    }
    
    // touchestypeが一致する行のcommand1〜4を更新
    func update(data:DataModel) -> Bool{
//        if let _ = SD.executeChange("UPDATE anyremocon SET command1=?,command2=?,command3=?,command4=? WHERE touchestype = ?", withArgs: [data.command1, data.command2, data.command3, data.command4, data.touchestype]) {
//            //there was an error during the insert, handle it here
//        } else {
//            return false
//        }
        return true
    }
    
    // 最新1件を削除
    func delete() -> Bool {
        if let _ = SD.executeChange("DELETE FROM actionlabel ORDER BY ID DESC LIMiT 1") {
            //there was an error during the insert, handle it here
            return false
        } else {
            //no error, the row was inserted successfully
            return true
        }
    }
    
    // DB内すべてのデータを削除
    func deleteAll() -> Bool{
        if let _ = SD.executeChange("DELETE FROM actionlabel") {
            //there was an error during the insert, handle it here
            return false
        } else {
            //no error, the row was inserted successfully
            return true
        }
    }
    
}