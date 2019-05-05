package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroJinJieErrorMessage;
import com.net.MNetHandler;

public class ResHeroJinJieErrorHandler extends MNetHandler {

    // 武将进阶
    override public function action(): void{
        var msg:ResHeroJinJieErrorMessage = ResHeroJinJieErrorMessage(this.message);
        // todo
    }
}
}