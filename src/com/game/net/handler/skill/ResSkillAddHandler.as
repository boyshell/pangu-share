package com.game.net.handler.skill {

import com.Mgr;
import com.game.net.message.skill.ResSkillAddMessage;
import com.net.MNetHandler;

public class ResSkillAddHandler extends MNetHandler {

    // 添加技能
    override public function action(): void{
        var msg:ResSkillAddMessage = ResSkillAddMessage(this.message);
        // todo
    }
}
}