package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailSystemRcvMessage;
import com.net.MNetHandler;

public class ResMailSystemRcvHandler extends MNetHandler {

    // 收取邮件
    override public function action(): void{
        var msg:ResMailSystemRcvMessage = ResMailSystemRcvMessage(this.message);
        // todo
    }
}
}