package com.game.net.handler.train {

import com.Mgr;
import com.game.net.message.train.ResTrainPrizeMessage;
import com.net.MNetHandler;

public class ResTrainPrizeHandler extends MNetHandler {

    // 演武奖励
    override public function action(): void{
        var msg:ResTrainPrizeMessage = ResTrainPrizeMessage(this.message);
        // todo
    }
}
}