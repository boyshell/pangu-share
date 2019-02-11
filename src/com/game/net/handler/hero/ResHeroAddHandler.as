package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroAddMessage;
import com.net.MNetHandler;

public class ResHeroAddHandler extends MNetHandler {

    // 添加武将卡
    override public function action(): void{
        var msg:ResHeroAddMessage = ResHeroAddMessage(this.message);
        // todo
    }
}
}