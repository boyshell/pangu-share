package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildInviteMessage;
import com.net.MNetHandler;

public class ResGuildInviteHandler extends MNetHandler {

    // 邀请入帮
    override public function action(): void{
        var msg:ResGuildInviteMessage = ResGuildInviteMessage(this.message);
        // todo
    }
}
}