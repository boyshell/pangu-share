package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildBeInvitedMessage;
import com.net.MNetHandler;

public class ResGuildBeInvitedHandler extends MNetHandler {

    // 被邀请入帮
    override public function action(): void{
        var msg:ResGuildBeInvitedMessage = ResGuildBeInvitedMessage(this.message);
        // todo
    }
}
}