package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroRemoveMessage;
import com.net.MNetHandler;

public class ResHeroRemoveHandler extends MNetHandler {

    // 移除武将卡
    override public function action(): void{
        var msg:ResHeroRemoveMessage = ResHeroRemoveMessage(this.message);
        // todo
    }
}
}