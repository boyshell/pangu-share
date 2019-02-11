package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroAddSkillErrorMessage;
import com.net.MNetHandler;

public class ResHeroAddSkillErrorHandler extends MNetHandler {

    // 装配技能
    override public function action(): void{
        var msg:ResHeroAddSkillErrorMessage = ResHeroAddSkillErrorMessage(this.message);
        // todo
    }
}
}