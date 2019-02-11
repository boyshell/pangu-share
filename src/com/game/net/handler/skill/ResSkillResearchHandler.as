package com.game.net.handler.skill {

import com.Mgr;
import com.game.net.message.skill.ResSkillResearchMessage;
import com.net.MNetHandler;

public class ResSkillResearchHandler extends MNetHandler {

    // 研究技能
    override public function action(): void{
        var msg:ResSkillResearchMessage = ResSkillResearchMessage(this.message);
        // todo
    }
}
}