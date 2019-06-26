package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildValueUpdateMessage;
import com.net.MNetHandler;

public class ResGuildValueUpdateHandler extends MNetHandler {

    // 帮会值更新
    override public function action(): void{
        var msg:ResGuildValueUpdateMessage = ResGuildValueUpdateMessage(this.message);
        // todo
    }
}
}