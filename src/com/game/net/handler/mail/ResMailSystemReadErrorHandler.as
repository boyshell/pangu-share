package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailSystemReadErrorMessage;
import com.net.MNetHandler;

public class ResMailSystemReadErrorHandler extends MNetHandler {

    // 读取邮件
    override public function action(): void{
        var msg:ResMailSystemReadErrorMessage = ResMailSystemReadErrorMessage(this.message);
        // todo
    }
}
}