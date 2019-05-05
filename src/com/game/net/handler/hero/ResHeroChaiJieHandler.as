package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroChaiJieMessage;
import com.net.MNetHandler;

public class ResHeroChaiJieHandler extends MNetHandler {

    // 拆解技能
    override public function action(): void{
        var msg:ResHeroChaiJieMessage = ResHeroChaiJieMessage(this.message);
        // todo
    }
}
}