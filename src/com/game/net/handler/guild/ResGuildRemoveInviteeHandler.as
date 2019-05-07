package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildRemoveInviteeMessage;
import com.net.MNetHandler;

public class ResGuildRemoveInviteeHandler extends MNetHandler {

    // 移除入帮邀请
    override public function action(): void{
        var msg:ResGuildRemoveInviteeMessage = ResGuildRemoveInviteeMessage(this.message);
        // todo
    }
}
}