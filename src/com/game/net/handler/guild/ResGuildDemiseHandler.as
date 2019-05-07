package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildDemiseMessage;
import com.net.MNetHandler;

public class ResGuildDemiseHandler extends MNetHandler {

    // 禅让
    override public function action(): void{
        var msg:ResGuildDemiseMessage = ResGuildDemiseMessage(this.message);
        // todo
    }
}
}