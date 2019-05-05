package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamUnSetMessage;
import com.net.MNetHandler;

public class ResTeamUnSetHandler extends MNetHandler {

    // 队伍取消设置
    override public function action(): void{
        var msg:ResTeamUnSetMessage = ResTeamUnSetMessage(this.message);
        // todo
    }
}
}