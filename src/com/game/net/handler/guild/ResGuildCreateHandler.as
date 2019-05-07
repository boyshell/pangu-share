package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildCreateMessage;
import com.net.MNetHandler;

public class ResGuildCreateHandler extends MNetHandler {

    // 创建帮会
    override public function action(): void{
        var msg:ResGuildCreateMessage = ResGuildCreateMessage(this.message);
        // todo
    }
}
}