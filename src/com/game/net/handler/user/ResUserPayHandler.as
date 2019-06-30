package com.game.net.handler.user {

import com.Mgr;
import com.game.net.message.user.ResUserPayMessage;
import com.net.MNetHandler;

public class ResUserPayHandler extends MNetHandler {

    // 领取月卡
    override public function action(): void{
        var msg:ResUserPayMessage = ResUserPayMessage(this.message);
        // todo
    }
}
}