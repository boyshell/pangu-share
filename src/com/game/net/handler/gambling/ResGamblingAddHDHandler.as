package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingAddHDMessage;
import com.net.MNetHandler;

public class ResGamblingAddHDHandler extends MNetHandler {

    // 添加/更新卡包
    override public function action(): void{
        var msg:ResGamblingAddHDMessage = ResGamblingAddHDMessage(this.message);
        // todo
    }
}
}