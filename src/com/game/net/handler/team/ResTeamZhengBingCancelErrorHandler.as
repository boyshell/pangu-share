package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamZhengBingCancelErrorMessage;
import com.net.MNetHandler;

public class ResTeamZhengBingCancelErrorHandler extends MNetHandler {

    // 取消征兵
    override public function action(): void{
        var msg:ResTeamZhengBingCancelErrorMessage = ResTeamZhengBingCancelErrorMessage(this.message);
        // todo
    }
}
}