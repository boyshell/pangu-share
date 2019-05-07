package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildDismissErrorMessage;
import com.net.MNetHandler;

public class ResGuildDismissErrorHandler extends MNetHandler {

    // 解散帮会
    override public function action(): void{
        var msg:ResGuildDismissErrorMessage = ResGuildDismissErrorMessage(this.message);
        // todo
    }
}
}