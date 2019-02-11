package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroPeiDianResetMessage;
import com.net.MNetHandler;

public class ResHeroPeiDianResetHandler extends MNetHandler {

    // 重置武将配点
    override public function action(): void{
        var msg:ResHeroPeiDianResetMessage = ResHeroPeiDianResetMessage(this.message);
        // todo
    }
}
}