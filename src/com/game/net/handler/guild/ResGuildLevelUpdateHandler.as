package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildLevelUpdateMessage;
import com.net.MNetHandler;

public class ResGuildLevelUpdateHandler extends MNetHandler {

    // 帮会值更新
    override public function action(): void{
        var msg:ResGuildLevelUpdateMessage = ResGuildLevelUpdateMessage(this.message);
        // todo
    }
}
}