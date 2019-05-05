package com.game.net.handler.util {

import com.Mgr;
import com.game.net.message.util.ResGMMessage;
import com.net.MNetHandler;

public class ResGMHandler extends MNetHandler {

    // GM指令
    override public function action(): void{
        var msg:ResGMMessage = ResGMMessage(this.message);
        // todo
    }
}
}