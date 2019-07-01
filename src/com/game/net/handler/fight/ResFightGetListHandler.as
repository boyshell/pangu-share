package com.game.net.handler.fight {

import com.Mgr;
import com.game.net.message.fight.ResFightGetListMessage;
import com.net.MNetHandler;

public class ResFightGetListHandler extends MNetHandler {

    // 获取战报列表
    override public function action(): void{
        var msg:ResFightGetListMessage = ResFightGetListMessage(this.message);
        // todo
    }
}
}