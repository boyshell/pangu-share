package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildGetAllErrorMessage;
import com.net.MNetHandler;

public class ResGuildGetAllErrorHandler extends MNetHandler {

    // 获取所有的帮会
    override public function action(): void{
        var msg:ResGuildGetAllErrorMessage = ResGuildGetAllErrorMessage(this.message);
        // todo
    }
}
}