package com.game.net.handler.fight {

import com.Mgr;
import com.game.net.message.fight.ResFightGetListErrorMessage;
import com.net.MNetHandler;

public class ResFightGetListErrorHandler extends MNetHandler {

    // 获取战报列表
    override public function action(): void{
        var msg:ResFightGetListErrorMessage = ResFightGetListErrorMessage(this.message);
        // todo
    }
}
}