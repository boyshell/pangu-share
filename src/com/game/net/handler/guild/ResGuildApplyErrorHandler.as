package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildApplyErrorMessage;
import com.net.MNetHandler;

public class ResGuildApplyErrorHandler extends MNetHandler {

    // 申请加入帮会
    override public function action(): void{
        var msg:ResGuildApplyErrorMessage = ResGuildApplyErrorMessage(this.message);
        // todo
    }
}
}