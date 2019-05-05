package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroResetErrorMessage;
import com.net.MNetHandler;

public class ResHeroResetErrorHandler extends MNetHandler {

    // 武将重置
    override public function action(): void{
        var msg:ResHeroResetErrorMessage = ResHeroResetErrorMessage(this.message);
        // todo
    }
}
}