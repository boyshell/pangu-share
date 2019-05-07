package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildAgreeInviteErrorMessage;
import com.net.MNetHandler;

public class ResGuildAgreeInviteErrorHandler extends MNetHandler {

    // 同意邀请
    override public function action(): void{
        var msg:ResGuildAgreeInviteErrorMessage = ResGuildAgreeInviteErrorMessage(this.message);
        // todo
    }
}
}