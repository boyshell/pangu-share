package com.game.net.handler.sign {

import com.Mgr;
import com.game.net.message.sign.ResSignErrorMessage;
import com.net.MNetHandler;

public class ResSignErrorHandler extends MNetHandler {

    // 签到
    override public function action(): void{
        var msg:ResSignErrorMessage = ResSignErrorMessage(this.message);
        // todo
    }
}
}