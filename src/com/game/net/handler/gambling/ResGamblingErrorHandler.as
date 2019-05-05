package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingErrorMessage;
import com.net.MNetHandler;

public class ResGamblingErrorHandler extends MNetHandler {

    // 招募
    override public function action(): void{
        var msg:ResGamblingErrorMessage = ResGamblingErrorMessage(this.message);
        // todo
    }
}
}