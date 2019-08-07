//
//  ChatUser.swift
//  MessageKitProject
//
//  Created by 渡邉舜也 on 05/08/2019.
//  Copyright © 2019 渡邉舜也. All rights reserved.
//

import MessageKit

class ChatUser: SenderType {
    
    //ユーザーID
    var senderId: String
    
    //表示名
    var  displayName: String
    
    
    //コンストラクタ（クラスをインスタンス化するときに呼ばれるもの）
    //ChatUserを作る時は、必ずユーザーIDと表示名を設定するようにする
    
    init(senderId: String , displayName: String) {
        self.senderId = senderId
        self.displayName = displayName
    }
    
}
