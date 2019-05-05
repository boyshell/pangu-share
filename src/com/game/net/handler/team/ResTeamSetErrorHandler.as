package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamSetErrorMessage;
import com.net.MNetHandler;

public class ResTeamSetErrorHandler extends MNetHandler {

    // 队伍设置
    override public function action(): void{
        var msg:ResTeamSetErrorMessage = ResTeamSetErrorMessage(this.message);
        // todo
    }
}
}