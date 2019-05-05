package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamZhengBingLiJiErrorMessage;
import com.net.MNetHandler;

public class ResTeamZhengBingLiJiErrorHandler extends MNetHandler {

    // 征兵(立即)
    override public function action(): void{
        var msg:ResTeamZhengBingLiJiErrorMessage = ResTeamZhengBingLiJiErrorMessage(this.message);
        // todo
    }
}
}