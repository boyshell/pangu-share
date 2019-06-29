package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingHouseRemoveMessage;
import com.net.MNetHandler;

public class ResGamblingHouseRemoveHandler extends MNetHandler {

    // 移除卡包
    override public function action(): void{
        var msg:ResGamblingHouseRemoveMessage = ResGamblingHouseRemoveMessage(this.message);
        // todo
    }
}
}