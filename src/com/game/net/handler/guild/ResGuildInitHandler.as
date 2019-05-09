package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildInitMessage;
import com.net.MNetHandler;

public class ResGuildInitHandler extends MNetHandler {

    // 初始化帮会信息
    override public function action(): void{
        var msg:ResGuildInitMessage = ResGuildInitMessage(this.message);
        // todo
    }
}
}