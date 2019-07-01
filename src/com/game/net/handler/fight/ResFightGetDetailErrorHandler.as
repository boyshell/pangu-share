package com.game.net.handler.fight {

import com.Mgr;
import com.game.net.message.fight.ResFightGetDetailErrorMessage;
import com.net.MNetHandler;

public class ResFightGetDetailErrorHandler extends MNetHandler {

    // 获取战报详情
    override public function action(): void{
        var msg:ResFightGetDetailErrorMessage = ResFightGetDetailErrorMessage(this.message);
        // todo
    }
}
}