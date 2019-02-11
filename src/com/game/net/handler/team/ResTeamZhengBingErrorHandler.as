package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamZhengBingErrorMessage;
import com.net.MNetHandler;

public class ResTeamZhengBingErrorHandler extends MNetHandler {

    // 征兵
    override public function action(): void{
        var msg:ResTeamZhengBingErrorMessage = ResTeamZhengBingErrorMessage(this.message);
        // todo
    }
}
}