package com.game.net.handler.task {

import com.Mgr;
import com.game.net.message.task.ResTaskGetPrizeMessage;
import com.net.MNetHandler;

public class ResTaskGetPrizeHandler extends MNetHandler {

    // 任务领奖
    override public function action(): void{
        var msg:ResTaskGetPrizeMessage = ResTaskGetPrizeMessage(this.message);
        // todo
    }
}
}