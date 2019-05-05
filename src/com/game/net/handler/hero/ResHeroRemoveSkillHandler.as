package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroRemoveSkillMessage;
import com.net.MNetHandler;

public class ResHeroRemoveSkillHandler extends MNetHandler {

    // 武将移除技能
    override public function action(): void{
        var msg:ResHeroRemoveSkillMessage = ResHeroRemoveSkillMessage(this.message);
        // todo
    }
}
}