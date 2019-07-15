package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingRemoveMessage;
import com.net.MNetHandler;

public class ResGamblingRemoveHandler extends MNetHandler {

    // 移除卡包
    override public function action(): void{
        var msg:ResGamblingRemoveMessage = ResGamblingRemoveMessage(this.message);
        // todo
    }
}
}