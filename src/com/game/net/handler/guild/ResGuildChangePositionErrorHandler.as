package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildChangePositionErrorMessage;
import com.net.MNetHandler;

public class ResGuildChangePositionErrorHandler extends MNetHandler {

    // 修改帮会职位
    override public function action(): void{
        var msg:ResGuildChangePositionErrorMessage = ResGuildChangePositionErrorMessage(this.message);
        // todo
    }
}
}