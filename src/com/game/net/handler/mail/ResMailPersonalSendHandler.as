package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailPersonalSendMessage;
import com.net.MNetHandler;

public class ResMailPersonalSendHandler extends MNetHandler {

    // 发送个人邮件
    override public function action(): void{
        var msg:ResMailPersonalSendMessage = ResMailPersonalSendMessage(this.message);
        // todo
    }
}
}