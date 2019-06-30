package com.game.net.handler.user {

import com.Mgr;
import com.game.net.message.user.ResUserPayErrorMessage;
import com.net.MNetHandler;

public class ResUserPayErrorHandler extends MNetHandler {

    // 领取月卡
    override public function action(): void{
        var msg:ResUserPayErrorMessage = ResUserPayErrorMessage(this.message);
        // todo
    }
}
}