package com.game.net.handler.mail {

import com.Mgr;
import com.game.net.message.mail.ResMailPersonalReadErrorMessage;
import com.net.MNetHandler;

public class ResMailPersonalReadErrorHandler extends MNetHandler {

    // 读取邮件
    override public function action(): void{
        var msg:ResMailPersonalReadErrorMessage = ResMailPersonalReadErrorMessage(this.message);
        // todo
    }
}
}