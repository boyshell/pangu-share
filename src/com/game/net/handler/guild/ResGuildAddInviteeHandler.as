package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildAddInviteeMessage;
import com.net.MNetHandler;

public class ResGuildAddInviteeHandler extends MNetHandler {

    // 添加入帮邀请
    override public function action(): void{
        var msg:ResGuildAddInviteeMessage = ResGuildAddInviteeMessage(this.message);
        // todo
    }
}
}