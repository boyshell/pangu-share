package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroBingZhongSkillSelectErrorMessage;
import com.net.MNetHandler;

public class ResHeroBingZhongSkillSelectErrorHandler extends MNetHandler {

    // 武将兵种技能选择
    override public function action(): void{
        var msg:ResHeroBingZhongSkillSelectErrorMessage = ResHeroBingZhongSkillSelectErrorMessage(this.message);
        // todo
    }
}
}