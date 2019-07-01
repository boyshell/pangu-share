package com.game.net.handler.fight {

import com.Mgr;
import com.game.net.message.fight.ResFightGetDetailMessage;
import com.net.MNetHandler;

public class ResFightGetDetailHandler extends MNetHandler {

    // 获取战报详情
    override public function action(): void{
        var msg:ResFightGetDetailMessage = ResFightGetDetailMessage(this.message);
        // todo
    }
}
}