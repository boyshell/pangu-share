package com.game.net.handler.skill {

import com.Mgr;
import com.game.net.message.skill.ResSkillResearchErrorMessage;
import com.net.MNetHandler;

public class ResSkillResearchErrorHandler extends MNetHandler {

    // 研究技能
    override public function action(): void{
        var msg:ResSkillResearchErrorMessage = ResSkillResearchErrorMessage(this.message);
        // todo
    }
}
}