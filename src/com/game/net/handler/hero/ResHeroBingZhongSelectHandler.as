package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroBingZhongSelectMessage;
import com.net.MNetHandler;

public class ResHeroBingZhongSelectHandler extends MNetHandler {

    // 武将兵种选择
    override public function action(): void{
        var msg:ResHeroBingZhongSelectMessage = ResHeroBingZhongSelectMessage(this.message);
        // todo
    }
}
}