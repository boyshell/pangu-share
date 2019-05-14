package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailPersonalNewMessage;
import com.net.MNetHandler;

public class ResMailPersonalNewHandler extends MNetHandler {

    // 新的个人邮件
    override public function action(): void{
        var msg:ResMailPersonalNewMessage = ResMailPersonalNewMessage(this.message);
        // todo
    }
}
}