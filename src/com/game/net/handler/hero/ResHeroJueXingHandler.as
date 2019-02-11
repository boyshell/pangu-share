package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroJueXingMessage;
import com.net.MNetHandler;

public class ResHeroJueXingHandler extends MNetHandler {

    // 武将觉醒
    override public function action(): void{
        var msg:ResHeroJueXingMessage = ResHeroJueXingMessage(this.message);
        // todo
    }
}
}