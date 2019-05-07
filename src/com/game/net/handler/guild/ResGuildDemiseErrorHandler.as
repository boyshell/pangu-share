package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildDemiseErrorMessage;
import com.net.MNetHandler;

public class ResGuildDemiseErrorHandler extends MNetHandler {

    // 禅让
    override public function action(): void{
        var msg:ResGuildDemiseErrorMessage = ResGuildDemiseErrorMessage(this.message);
        // todo
    }
}
}