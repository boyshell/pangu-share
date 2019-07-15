package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingAddEXMessage;
import com.net.MNetHandler;

public class ResGamblingAddEXHandler extends MNetHandler {

    // 添加/更新卡包
    override public function action(): void{
        var msg:ResGamblingAddEXMessage = ResGamblingAddEXMessage(this.message);
        // todo
    }
}
}