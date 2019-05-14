package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailSystemReadMessage;
import com.net.MNetHandler;

public class ResMailSystemReadHandler extends MNetHandler {

    // 读取邮件
    override public function action(): void{
        var msg:ResMailSystemReadMessage = ResMailSystemReadMessage(this.message);
        // todo
    }
}
}