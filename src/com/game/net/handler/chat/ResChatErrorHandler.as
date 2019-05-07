package com.game.net.handler.chat {

import com.Mgr;
import com.game.net.message.chat.ResChatErrorMessage;
import com.net.MNetHandler;

public class ResChatErrorHandler extends MNetHandler {

    // 聊天
    override public function action(): void{
        var msg:ResChatErrorMessage = ResChatErrorMessage(this.message);
        // todo
    }
}
}