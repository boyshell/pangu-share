package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildGetAllMessage;
import com.net.MNetHandler;

public class ResGuildGetAllHandler extends MNetHandler {

    // 获取所有的帮会
    override public function action(): void{
        var msg:ResGuildGetAllMessage = ResGuildGetAllMessage(this.message);
        // todo
    }
}
}