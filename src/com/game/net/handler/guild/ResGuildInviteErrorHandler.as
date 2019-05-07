package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildInviteErrorMessage;
import com.net.MNetHandler;

public class ResGuildInviteErrorHandler extends MNetHandler {

    // 邀请入帮
    override public function action(): void{
        var msg:ResGuildInviteErrorMessage = ResGuildInviteErrorMessage(this.message);
        // todo
    }
}
}