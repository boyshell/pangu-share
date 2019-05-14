package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailGuildReadErrorMessage;
import com.net.MNetHandler;

public class ResMailGuildReadErrorHandler extends MNetHandler {

    // 读取邮件
    override public function action(): void{
        var msg:ResMailGuildReadErrorMessage = ResMailGuildReadErrorMessage(this.message);
        // todo
    }
}
}