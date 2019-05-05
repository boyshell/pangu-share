package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroChaiJieErrorMessage;
import com.net.MNetHandler;

public class ResHeroChaiJieErrorHandler extends MNetHandler {

    // 拆解技能
    override public function action(): void{
        var msg:ResHeroChaiJieErrorMessage = ResHeroChaiJieErrorMessage(this.message);
        // todo
    }
}
}