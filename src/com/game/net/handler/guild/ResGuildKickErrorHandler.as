package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildKickErrorMessage;
import com.net.MNetHandler;

public class ResGuildKickErrorHandler extends MNetHandler {

    // 踢人
    override public function action(): void{
        var msg:ResGuildKickErrorMessage = ResGuildKickErrorMessage(this.message);
        // todo
    }
}
}