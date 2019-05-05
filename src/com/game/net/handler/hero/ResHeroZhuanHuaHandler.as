package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroZhuanHuaMessage;
import com.net.MNetHandler;

public class ResHeroZhuanHuaHandler extends MNetHandler {

    // 武将转化
    override public function action(): void{
        var msg:ResHeroZhuanHuaMessage = ResHeroZhuanHuaMessage(this.message);
        // todo
    }
}
}