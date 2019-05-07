package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildDismissMessage;
import com.net.MNetHandler;

public class ResGuildDismissHandler extends MNetHandler {

    // 解散帮会
    override public function action(): void{
        var msg:ResGuildDismissMessage = ResGuildDismissMessage(this.message);
        // todo
    }
}
}