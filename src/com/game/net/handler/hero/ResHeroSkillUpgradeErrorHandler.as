package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroSkillUpgradeErrorMessage;
import com.net.MNetHandler;

public class ResHeroSkillUpgradeErrorHandler extends MNetHandler {

    // 武将技能升级
    override public function action(): void{
        var msg:ResHeroSkillUpgradeErrorMessage = ResHeroSkillUpgradeErrorMessage(this.message);
        // todo
    }
}
}