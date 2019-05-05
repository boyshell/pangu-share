package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamSetMessage;
import com.net.MNetHandler;

public class ResTeamSetHandler extends MNetHandler {

    // 队伍设置
    override public function action(): void{
        var msg:ResTeamSetMessage = ResTeamSetMessage(this.message);
        // todo
    }
}
}