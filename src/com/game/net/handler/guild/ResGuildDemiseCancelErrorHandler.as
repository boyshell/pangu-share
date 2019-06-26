package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildDemiseCancelErrorMessage;
import com.net.MNetHandler;

public class ResGuildDemiseCancelErrorHandler extends MNetHandler {

    // 取消禅让
    override public function action(): void{
        var msg:ResGuildDemiseCancelErrorMessage = ResGuildDemiseCancelErrorMessage(this.message);
        // todo
    }
}
}