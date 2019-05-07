package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildAddMemberMessage;
import com.net.MNetHandler;

public class ResGuildAddMemberHandler extends MNetHandler {

    // 添加成员
    override public function action(): void{
        var msg:ResGuildAddMemberMessage = ResGuildAddMemberMessage(this.message);
        // todo
    }
}
}