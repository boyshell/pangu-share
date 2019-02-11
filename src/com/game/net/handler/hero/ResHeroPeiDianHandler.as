package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroPeiDianMessage;
import com.net.MNetHandler;

public class ResHeroPeiDianHandler extends MNetHandler {

    // 武将配点
    override public function action(): void{
        var msg:ResHeroPeiDianMessage = ResHeroPeiDianMessage(this.message);
        // todo
    }
}
}