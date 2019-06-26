package com.game.net.handler.user {

import com.Mgr;
import com.game.net.message.user.ResUserUpdateGuildApplyTimeMessage;
import com.net.MNetHandler;

public class ResUserUpdateGuildApplyTimeHandler extends MNetHandler {

    // 更新帮会申请时间
    override public function action(): void{
        var msg:ResUserUpdateGuildApplyTimeMessage = ResUserUpdateGuildApplyTimeMessage(this.message);
        // todo
    }
}
}