package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingGetHeroesMessage;
import com.net.MNetHandler;

public class ResGamblingGetHeroesHandler extends MNetHandler {

    // 获取卡包武将
    override public function action(): void{
        var msg:ResGamblingGetHeroesMessage = ResGamblingGetHeroesMessage(this.message);
        // todo
    }
}
}