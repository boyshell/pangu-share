package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroRemoveSkillErrorMessage;
import com.net.MNetHandler;

public class ResHeroRemoveSkillErrorHandler extends MNetHandler {

    // 武将移除技能
    override public function action(): void{
        var msg:ResHeroRemoveSkillErrorMessage = ResHeroRemoveSkillErrorMessage(this.message);
        // todo
    }
}
}