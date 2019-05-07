package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildAddApplicantMessage;
import com.net.MNetHandler;

public class ResGuildAddApplicantHandler extends MNetHandler {

    // 添加申请者
    override public function action(): void{
        var msg:ResGuildAddApplicantMessage = ResGuildAddApplicantMessage(this.message);
        // todo
    }
}
}