package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroAddSkillMessage;
import com.net.MNetHandler;

public class ResHeroAddSkillHandler extends MNetHandler {

    // 装配技能
    override public function action(): void{
        var msg:ResHeroAddSkillMessage = ResHeroAddSkillMessage(this.message);
        // todo
    }
}
}