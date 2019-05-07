package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildCreateErrorMessage;
import com.net.MNetHandler;

public class ResGuildCreateErrorHandler extends MNetHandler {

    // 创建帮会
    override public function action(): void{
        var msg:ResGuildCreateErrorMessage = ResGuildCreateErrorMessage(this.message);
        // todo
    }
}
}