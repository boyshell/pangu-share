package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroPeiDianErrorMessage;
import com.net.MNetHandler;

public class ResHeroPeiDianErrorHandler extends MNetHandler {

    // 武将配点
    override public function action(): void{
        var msg:ResHeroPeiDianErrorMessage = ResHeroPeiDianErrorMessage(this.message);
        // todo
    }
}
}