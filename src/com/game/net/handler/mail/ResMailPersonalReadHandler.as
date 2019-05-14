package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailPersonalReadMessage;
import com.net.MNetHandler;

public class ResMailPersonalReadHandler extends MNetHandler {

    // 读取邮件
    override public function action(): void{
        var msg:ResMailPersonalReadMessage = ResMailPersonalReadMessage(this.message);
        // todo
    }
}
}