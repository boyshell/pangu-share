package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroBingZhongJinJieMessage;
import com.net.MNetHandler;

public class ResHeroBingZhongJinJieHandler extends MNetHandler {

    // 武将兵种进阶
    override public function action(): void{
        var msg:ResHeroBingZhongJinJieMessage = ResHeroBingZhongJinJieMessage(this.message);
        // todo
    }
}
}