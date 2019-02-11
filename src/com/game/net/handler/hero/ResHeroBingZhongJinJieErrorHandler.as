package com.game.net.handler.hero {

import com.Mgr;
import com.game.net.message.hero.ResHeroBingZhongJinJieErrorMessage;
import com.net.MNetHandler;

public class ResHeroBingZhongJinJieErrorHandler extends MNetHandler {

    // 武将兵种进阶
    override public function action(): void{
        var msg:ResHeroBingZhongJinJieErrorMessage = ResHeroBingZhongJinJieErrorMessage(this.message);
        // todo
    }
}
}