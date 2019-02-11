package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroBingZhongSkillSelectMessage;
import com.net.MNetHandler;

public class ResHeroBingZhongSkillSelectHandler extends MNetHandler {

    // 武将兵种技能选择
    override public function action(): void{
        var msg:ResHeroBingZhongSkillSelectMessage = ResHeroBingZhongSkillSelectMessage(this.message);
        // todo
    }
}
}