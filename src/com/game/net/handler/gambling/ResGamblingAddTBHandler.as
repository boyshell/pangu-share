package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingAddTBMessage;
import com.net.MNetHandler;

public class ResGamblingAddTBHandler extends MNetHandler {

    // 添加/更新卡包
    override public function action(): void{
        var msg:ResGamblingAddTBMessage = ResGamblingAddTBMessage(this.message);
        // todo
    }
}
}