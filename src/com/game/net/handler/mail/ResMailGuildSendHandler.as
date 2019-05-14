package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailGuildSendMessage;
import com.net.MNetHandler;

public class ResMailGuildSendHandler extends MNetHandler {

    // 发送帮会邮件
    override public function action(): void{
        var msg:ResMailGuildSendMessage = ResMailGuildSendMessage(this.message);
        // todo
    }
}
}