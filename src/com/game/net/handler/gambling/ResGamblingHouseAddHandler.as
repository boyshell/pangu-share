package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingHouseAddMessage;
import com.net.MNetHandler;

public class ResGamblingHouseAddHandler extends MNetHandler {

    // 添加卡包
    override public function action(): void{
        var msg:ResGamblingHouseAddMessage = ResGamblingHouseAddMessage(this.message);
        // todo
    }
}
}