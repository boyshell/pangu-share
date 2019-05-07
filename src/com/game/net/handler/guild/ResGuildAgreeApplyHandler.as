package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildAgreeApplyMessage;
import com.net.MNetHandler;

public class ResGuildAgreeApplyHandler extends MNetHandler {

    // 同意申请
    override public function action(): void{
        var msg:ResGuildAgreeApplyMessage = ResGuildAgreeApplyMessage(this.message);
        // todo
    }
}
}