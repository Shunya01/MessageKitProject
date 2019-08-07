//
//  Message.swift
//  MessageKitProject
//
//  Created by 渡邉舜也 on 05/08/2019.
//  Copyright © 2019 渡邉舜也. All rights reserved.
//

import MessageKit

//１件のメッセージのデータを持つクラス
//Messagetypeを継承
class Message: MessageType {
    
    //送信者
    let user:ChatUser
    
    //メッセージ本文
    let text: String
    
    //メッセージID(１件のメッセージを特定するため)
    let messageId: String
    
    //送信日付
    let sentDate: Date
    
    init(user:ChatUser,text: String ,messageId: String , sentDate: Date) {
        self.user = user
        self.text = text
        self.messageId = messageId
        self.sentDate = sentDate
    }
    
    var sender: SenderType{
        return Sender(id: user.senderId, displayName: user.displayName)
    }
    
    var kind: MessageKind{
        return .text(text)
    }
    
}
