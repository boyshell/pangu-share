package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildRefuseApplyErrorMessage;
import com.net.MNetHandler;

public class ResGuildRefuseApplyErrorHandler extends MNetHandler {

    // 拒绝申请
    override public function action(): void{
        var msg:ResGuildRefuseApplyErrorMessage = ResGuildRefuseApplyErrorMessage(this.message);
        // todo
    }
}
}