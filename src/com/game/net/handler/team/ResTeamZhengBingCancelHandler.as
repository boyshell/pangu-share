package com.game.net.handler.team {

import com.Mgr;
import com.game.net.message.team.ResTeamZhengBingCancelMessage;
import com.net.MNetHandler;

public class ResTeamZhengBingCancelHandler extends MNetHandler {

    // 取消征兵
    override public function action(): void{
        var msg:ResTeamZhengBingCancelMessage = ResTeamZhengBingCancelMessage(this.message);
        // todo
    }
}
}