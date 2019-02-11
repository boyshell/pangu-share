package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroSkillUpgradeMessage;
import com.net.MNetHandler;

public class ResHeroSkillUpgradeHandler extends MNetHandler {

    // 武将技能升级
    override public function action(): void{
        var msg:ResHeroSkillUpgradeMessage = ResHeroSkillUpgradeMessage(this.message);
        // todo
    }
}
}