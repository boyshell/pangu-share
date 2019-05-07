package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildExitMessage;
import com.net.MNetHandler;

public class ResGuildExitHandler extends MNetHandler {

    // 退出帮会
    override public function action(): void{
        var msg:ResGuildExitMessage = ResGuildExitMessage(this.message);
        // todo
    }
}
}