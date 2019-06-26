package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildDemiseUpdateMessage;
import com.net.MNetHandler;

public class ResGuildDemiseUpdateHandler extends MNetHandler {

    // 禅让信息更新
    override public function action(): void{
        var msg:ResGuildDemiseUpdateMessage = ResGuildDemiseUpdateMessage(this.message);
        // todo
    }
}
}