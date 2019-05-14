package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailGuildReadMessage;
import com.net.MNetHandler;

public class ResMailGuildReadHandler extends MNetHandler {

    // 读取邮件
    override public function action(): void{
        var msg:ResMailGuildReadMessage = ResMailGuildReadMessage(this.message);
        // todo
    }
}
}