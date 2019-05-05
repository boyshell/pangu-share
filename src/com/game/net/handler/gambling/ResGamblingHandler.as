package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingMessage;
import com.net.MNetHandler;

public class ResGamblingHandler extends MNetHandler {

    // 招募
    override public function action(): void{
        var msg:ResGamblingMessage = ResGamblingMessage(this.message);
        // todo
    }
}
}