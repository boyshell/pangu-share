package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailSystemNewMessage;
import com.net.MNetHandler;

public class ResMailSystemNewHandler extends MNetHandler {

    // 新的系统邮件
    override public function action(): void{
        var msg:ResMailSystemNewMessage = ResMailSystemNewMessage(this.message);
        // todo
    }
}
}