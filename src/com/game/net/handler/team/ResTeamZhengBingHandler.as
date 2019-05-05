package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamZhengBingMessage;
import com.net.MNetHandler;

public class ResTeamZhengBingHandler extends MNetHandler {

    // 征兵
    override public function action(): void{
        var msg:ResTeamZhengBingMessage = ResTeamZhengBingMessage(this.message);
        // todo
    }
}
}