package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildAgreeInviteMessage;
import com.net.MNetHandler;

public class ResGuildAgreeInviteHandler extends MNetHandler {

    // 同意邀请
    override public function action(): void{
        var msg:ResGuildAgreeInviteMessage = ResGuildAgreeInviteMessage(this.message);
        // todo
    }
}
}