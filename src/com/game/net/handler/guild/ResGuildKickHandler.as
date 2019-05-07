package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildKickMessage;
import com.net.MNetHandler;

public class ResGuildKickHandler extends MNetHandler {

    // 踢人
    override public function action(): void{
        var msg:ResGuildKickMessage = ResGuildKickMessage(this.message);
        // todo
    }
}
}