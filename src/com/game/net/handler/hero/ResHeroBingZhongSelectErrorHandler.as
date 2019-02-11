package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroBingZhongSelectErrorMessage;
import com.net.MNetHandler;

public class ResHeroBingZhongSelectErrorHandler extends MNetHandler {

    // 武将兵种选择
    override public function action(): void{
        var msg:ResHeroBingZhongSelectErrorMessage = ResHeroBingZhongSelectErrorMessage(this.message);
        // todo
    }
}
}