package com.game.net.handler.gambling {

import com.Mgr;
import com.game.net.message.gambling.ResGamblingGetHeroesErrorMessage;
import com.net.MNetHandler;

public class ResGamblingGetHeroesErrorHandler extends MNetHandler {

    // 获取卡包武将
    override public function action(): void{
        var msg:ResGamblingGetHeroesErrorMessage = ResGamblingGetHeroesErrorMessage(this.message);
        // todo
    }
}
}