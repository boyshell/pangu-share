package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildAgreeApplyErrorMessage;
import com.net.MNetHandler;

public class ResGuildAgreeApplyErrorHandler extends MNetHandler {

    // 同意申请
    override public function action(): void{
        var msg:ResGuildAgreeApplyErrorMessage = ResGuildAgreeApplyErrorMessage(this.message);
        // todo
    }
}
}