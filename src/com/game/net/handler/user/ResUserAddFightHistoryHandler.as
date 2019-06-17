package com.game.net.handler.user {

import com.Mgr;
import com.game.net.message.user.ResUserAddFightHistoryMessage;
import com.net.MNetHandler;

public class ResUserAddFightHistoryHandler extends MNetHandler {

    // 添加战斗记录
    override public function action(): void{
        var msg:ResUserAddFightHistoryMessage = ResUserAddFightHistoryMessage(this.message);
        // todo
    }
}
}