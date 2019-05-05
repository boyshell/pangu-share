package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroBingZhongUnlockMessage;
import com.net.MNetHandler;

public class ResHeroBingZhongUnlockHandler extends MNetHandler {

    // 武将兵种解锁
    override public function action(): void{
        var msg:ResHeroBingZhongUnlockMessage = ResHeroBingZhongUnlockMessage(this.message);
        // todo
    }
}
}