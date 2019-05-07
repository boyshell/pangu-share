package com.game.net.handler.chat {

import com.Mgr;
import com.game.net.message.chat.ResChatMessage;
import com.net.MNetHandler;

public class ResChatHandler extends MNetHandler {

    // 聊天
    override public function action(): void{
        var msg:ResChatMessage = ResChatMessage(this.message);
        // todo
    }
}
}