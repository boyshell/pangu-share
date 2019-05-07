package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildRemoveApplicantMessage;
import com.net.MNetHandler;

public class ResGuildRemoveApplicantHandler extends MNetHandler {

    // 移除申请者
    override public function action(): void{
        var msg:ResGuildRemoveApplicantMessage = ResGuildRemoveApplicantMessage(this.message);
        // todo
    }
}
}