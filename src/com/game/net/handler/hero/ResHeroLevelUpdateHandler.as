package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroLevelUpdateMessage;
import com.net.MNetHandler;

public class ResHeroLevelUpdateHandler extends MNetHandler {

    // 武将等级or经验变更
    override public function action(): void{
        var msg:ResHeroLevelUpdateMessage = ResHeroLevelUpdateMessage(this.message);
        // todo
    }
}
}