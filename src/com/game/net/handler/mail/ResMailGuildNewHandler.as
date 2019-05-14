package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailGuildNewMessage;
import com.net.MNetHandler;

public class ResMailGuildNewHandler extends MNetHandler {

    // 新的帮会邮件
    override public function action(): void{
        var msg:ResMailGuildNewMessage = ResMailGuildNewMessage(this.message);
        // todo
    }
}
}