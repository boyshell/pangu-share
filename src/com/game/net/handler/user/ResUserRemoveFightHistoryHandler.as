package com.game.net.handler.user {

import com.Mgr;
import com.game.net.message.user.ResUserRemoveFightHistoryMessage;
import com.net.MNetHandler;

public class ResUserRemoveFightHistoryHandler extends MNetHandler {

    // 移除战斗记录
    override public function action(): void{
        var msg:ResUserRemoveFightHistoryMessage = ResUserRemoveFightHistoryMessage(this.message);
        // todo
    }
}
}