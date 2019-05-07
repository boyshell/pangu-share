package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildRefuseApplyMessage;
import com.net.MNetHandler;

public class ResGuildRefuseApplyHandler extends MNetHandler {

    // 拒绝申请
    override public function action(): void{
        var msg:ResGuildRefuseApplyMessage = ResGuildRefuseApplyMessage(this.message);
        // todo
    }
}
}