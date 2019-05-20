package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQApplyMessage;
import com.net.MNetHandler;

public class ResQQApplyHandler extends MNetHandler {

    // 申请社交关系
    override public function action(): void{
        var msg:ResQQApplyMessage = ResQQApplyMessage(this.message);
        // todo
    }
}
}