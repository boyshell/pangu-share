package com.game.net.handler.skill {

import com.Mgr;
import com.game.net.message.skill.ResSkillRemoveMessage;
import com.net.MNetHandler;

public class ResSkillRemoveHandler extends MNetHandler {

    // 移除技能
    override public function action(): void{
        var msg:ResSkillRemoveMessage = ResSkillRemoveMessage(this.message);
        // todo
    }
}
}