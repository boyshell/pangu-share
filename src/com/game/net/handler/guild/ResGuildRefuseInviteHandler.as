package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildRefuseInviteMessage;
import com.net.MNetHandler;

public class ResGuildRefuseInviteHandler extends MNetHandler {

    // 拒绝邀请
    override public function action(): void{
        var msg:ResGuildRefuseInviteMessage = ResGuildRefuseInviteMessage(this.message);
        // todo
    }
}
}