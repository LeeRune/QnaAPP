//
//  QnaPool.swift
//  QnaApp
//
//  Created by 李易潤 on 2021/1/31.
//

import Foundation

class QnaPool{
  
    var qnas = [Qna]()
    
    init() {
        qnas = [
            Qna(question: ["動","？","得","咎"], selection: ["則", "輒", "轍", "折"], answer: "輒"),
            Qna(question: ["？", "私", "舞", "弊"], selection: ["循", "詢", "徇", "尋"], answer: "徇"),
            Qna(question: ["迫", "不", "？", "待"], selection: ["及", "急", "即", "級"], answer: "及"),
            Qna(question: ["？", "步", "自", "封"], selection: ["顧", "固", "故", "雇"], answer: "故"),
            Qna(question: ["分", "道", "揚", "？"], selection: ["標", "飆", "彪", "鑣"], answer: "鑣"),
            Qna(question: ["一", "？", "不", "振"], selection: ["覺", "掘", "蹶", "噘"], answer: "蹶"),
            Qna(question: ["剛", "？", "自", "用"], selection: ["必", "愎", "畢", "閉"], answer: "愎"),
            Qna(question: ["出", "？", "不", "意"], selection: ["其", "期", "奇", "騎"], answer: "其"),
            Qna(question: ["滿", "腹", "經", "？"], selection: ["輪", "綸", "倫", "崙"], answer: "綸"),
            Qna(question: ["銀", "貨", "兩", "？"], selection: ["迄", "泣", "訖", "乞"], answer: "訖"),
            Qna(question: ["？", "不", "關", "心"], selection: ["莫", "默", "墨", "漠"], answer: "漠"),
            Qna(question: ["黃", "？", "一", "夢"], selection: ["粱", "量", "良", "樑"], answer: "粱"),
            Qna(question: ["中", "流", "？", "柱"], selection: ["底", "砥", "抵", "柢"], answer: "砥"),
            Qna(question: ["？", "手", "可", "得"], selection: ["垂", "捶", "唾", "錘"], answer: "唾"),
            Qna(question: ["從", "中", "作", "？"], selection: ["哽", "耿", "埂", "梗"], answer: "梗"),
            Qna(question: ["蓬", "？", "生", "輝"], selection: ["蓽", "碧", "畢", "必"], answer: "蓽")
        ]
    }
}
