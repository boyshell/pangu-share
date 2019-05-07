package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildExitErrorMessage;
import com.net.MNetHandler;

public class ResGuildExitErrorHandler extends MNetHandler {

    // 退出帮会
    override public function action(): void{
        var msg:ResGuildExitErrorMessage = ResGuildExitErrorMessage(this.message);
        // todo
    }
}
}