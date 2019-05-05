package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroZhuanHuaErrorMessage;
import com.net.MNetHandler;

public class ResHeroZhuanHuaErrorHandler extends MNetHandler {

    // 武将转化
    override public function action(): void{
        var msg:ResHeroZhuanHuaErrorMessage = ResHeroZhuanHuaErrorMessage(this.message);
        // todo
    }
}
}