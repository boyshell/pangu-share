package com.game.net.handler.chat {

import com.Mgr;
import com.game.net.message.chat.ResChatInitMessage;
import com.net.MNetHandler;

public class ResChatInitHandler extends MNetHandler {

    // 聊天初始化
    override public function action(): void{
        var msg:ResChatInitMessage = ResChatInitMessage(this.message);
        // todo
    }
}
}