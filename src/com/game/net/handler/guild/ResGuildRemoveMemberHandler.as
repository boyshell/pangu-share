package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildRemoveMemberMessage;
import com.net.MNetHandler;

public class ResGuildRemoveMemberHandler extends MNetHandler {

    // 移除成员
    override public function action(): void{
        var msg:ResGuildRemoveMemberMessage = ResGuildRemoveMemberMessage(this.message);
        // todo
    }
}
}