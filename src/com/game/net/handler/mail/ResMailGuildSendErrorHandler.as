package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailGuildSendErrorMessage;
import com.net.MNetHandler;

public class ResMailGuildSendErrorHandler extends MNetHandler {

    // 发送帮会邮件
    override public function action(): void{
        var msg:ResMailGuildSendErrorMessage = ResMailGuildSendErrorMessage(this.message);
        // todo
    }
}
}