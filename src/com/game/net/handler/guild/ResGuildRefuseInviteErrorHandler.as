package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildRefuseInviteErrorMessage;
import com.net.MNetHandler;

public class ResGuildRefuseInviteErrorHandler extends MNetHandler {

    // 拒绝邀请
    override public function action(): void{
        var msg:ResGuildRefuseInviteErrorMessage = ResGuildRefuseInviteErrorMessage(this.message);
        // todo
    }
}
}