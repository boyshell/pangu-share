package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingAddMJMessage;
import com.net.MNetHandler;

public class ResGamblingAddMJHandler extends MNetHandler {

    // 添加/更新卡包
    override public function action(): void{
        var msg:ResGamblingAddMJMessage = ResGamblingAddMJMessage(this.message);
        // todo
    }
}
}