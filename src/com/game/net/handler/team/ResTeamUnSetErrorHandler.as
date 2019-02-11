package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamUnSetErrorMessage;
import com.net.MNetHandler;

public class ResTeamUnSetErrorHandler extends MNetHandler {

    // 队伍取消设置
    override public function action(): void{
        var msg:ResTeamUnSetErrorMessage = ResTeamUnSetErrorMessage(this.message);
        // todo
    }
}
}