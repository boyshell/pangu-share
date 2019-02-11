package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroPeiDianResetErrorMessage;
import com.net.MNetHandler;

public class ResHeroPeiDianResetErrorHandler extends MNetHandler {

    // 重置武将配点
    override public function action(): void{
        var msg:ResHeroPeiDianResetErrorMessage = ResHeroPeiDianResetErrorMessage(this.message);
        // todo
    }
}
}