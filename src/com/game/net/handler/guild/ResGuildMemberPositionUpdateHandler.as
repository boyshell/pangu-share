package com.game.net.handler.guild {

import com.Mgr;
import com.game.net.message.guild.ResGuildMemberPositionUpdateMessage;
import com.net.MNetHandler;

public class ResGuildMemberPositionUpdateHandler extends MNetHandler {

    // 更新帮会成员的职位
    override public function action(): void{
        var msg:ResGuildMemberPositionUpdateMessage = ResGuildMemberPositionUpdateMessage(this.message);
        // todo
    }
}
}