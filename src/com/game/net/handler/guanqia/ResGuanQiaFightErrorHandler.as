package com.game.net.handler.guanqia {

import com.Mgr;
import com.game.net.message.guanqia.ResGuanQiaFightErrorMessage;
import com.net.MNetHandler;

public class ResGuanQiaFightErrorHandler extends MNetHandler {

    // 闯关
    override public function action(): void{
        var msg:ResGuanQiaFightErrorMessage = ResGuanQiaFightErrorMessage(this.message);
        // todo
    }
}
}