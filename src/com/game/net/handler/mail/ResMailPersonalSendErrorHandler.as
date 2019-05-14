package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailPersonalSendErrorMessage;
import com.net.MNetHandler;

public class ResMailPersonalSendErrorHandler extends MNetHandler {

    // 发送个人邮件
    override public function action(): void{
        var msg:ResMailPersonalSendErrorMessage = ResMailPersonalSendErrorMessage(this.message);
        // todo
    }
}
}