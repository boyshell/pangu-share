package com.game.net.handler.util {

import com.Mgr;
import com.game.net.message.util.ResKickMessage;
import com.net.MNetHandler;

public class ResKickHandler extends MNetHandler {

    // 踢人
    override public function action(): void{
        var msg:ResKickMessage = ResKickMessage(this.message);
        // todo
    }
}
}