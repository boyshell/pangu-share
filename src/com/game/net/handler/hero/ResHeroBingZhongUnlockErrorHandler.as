package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroBingZhongUnlockErrorMessage;
import com.net.MNetHandler;

public class ResHeroBingZhongUnlockErrorHandler extends MNetHandler {

    // 武将兵种解锁
    override public function action(): void{
        var msg:ResHeroBingZhongUnlockErrorMessage = ResHeroBingZhongUnlockErrorMessage(this.message);
        // todo
    }
}
}