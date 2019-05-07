package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildApplyMessage;
import com.net.MNetHandler;

public class ResGuildApplyHandler extends MNetHandler {

    // 申请加入帮会
    override public function action(): void{
        var msg:ResGuildApplyMessage = ResGuildApplyMessage(this.message);
        // todo
    }
}
}