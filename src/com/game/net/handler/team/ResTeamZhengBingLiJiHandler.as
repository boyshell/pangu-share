package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamZhengBingLiJiMessage;
import com.net.MNetHandler;

public class ResTeamZhengBingLiJiHandler extends MNetHandler {

    // 征兵(立即)
    override public function action(): void{
        var msg:ResTeamZhengBingLiJiMessage = ResTeamZhengBingLiJiMessage(this.message);
        // todo
    }
}
}