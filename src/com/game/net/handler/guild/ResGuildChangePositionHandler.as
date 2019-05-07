package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildChangePositionMessage;
import com.net.MNetHandler;

public class ResGuildChangePositionHandler extends MNetHandler {

    // 修改帮会职位
    override public function action(): void{
        var msg:ResGuildChangePositionMessage = ResGuildChangePositionMessage(this.message);
        // todo
    }
}
}