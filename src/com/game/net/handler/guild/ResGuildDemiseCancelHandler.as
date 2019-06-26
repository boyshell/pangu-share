package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildDemiseCancelMessage;
import com.net.MNetHandler;

public class ResGuildDemiseCancelHandler extends MNetHandler {

    // 取消禅让
    override public function action(): void{
        var msg:ResGuildDemiseCancelMessage = ResGuildDemiseCancelMessage(this.message);
        // todo
    }
}
}