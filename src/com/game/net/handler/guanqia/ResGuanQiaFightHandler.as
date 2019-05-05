package com.game.net.handler.guanqia {

import com.Mgr;
import com.game.net.message.guanqia.ResGuanQiaFightMessage;
import com.net.MNetHandler;

public class ResGuanQiaFightHandler extends MNetHandler {

    // 闯关
    override public function action(): void{
        var msg:ResGuanQiaFightMessage = ResGuanQiaFightMessage(this.message);
        // todo
    }
}
}