package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroJinJieMessage;
import com.net.MNetHandler;

public class ResHeroJinJieHandler extends MNetHandler {

    // 武将进阶
    override public function action(): void{
        var msg:ResHeroJinJieMessage = ResHeroJinJieMessage(this.message);
        // todo
    }
}
}