package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroJueXingErrorMessage;
import com.net.MNetHandler;

public class ResHeroJueXingErrorHandler extends MNetHandler {

    // 武将觉醒
    override public function action(): void{
        var msg:ResHeroJueXingErrorMessage = ResHeroJueXingErrorMessage(this.message);
        // todo
    }
}
}