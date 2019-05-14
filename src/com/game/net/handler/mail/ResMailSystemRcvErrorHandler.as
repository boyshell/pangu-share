package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailSystemRcvErrorMessage;
import com.net.MNetHandler;

public class ResMailSystemRcvErrorHandler extends MNetHandler {

    // 收取邮件
    override public function action(): void{
        var msg:ResMailSystemRcvErrorMessage = ResMailSystemRcvErrorMessage(this.message);
        // todo
    }
}
}