package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroResetMessage;
import com.net.MNetHandler;

public class ResHeroResetHandler extends MNetHandler {

    // 武将重置
    override public function action(): void{
        var msg:ResHeroResetMessage = ResHeroResetMessage(this.message);
        // todo
    }
}
}