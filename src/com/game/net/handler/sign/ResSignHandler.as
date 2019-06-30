package com.game.net.handler.sign {

import com.Mgr;
import com.game.net.message.sign.ResSignMessage;
import com.net.MNetHandler;

public class ResSignHandler extends MNetHandler {

    // 签到
    override public function action(): void{
        var msg:ResSignMessage = ResSignMessage(this.message);
        // todo
    }
}
}