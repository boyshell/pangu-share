package com.game.net.handler.task {

import com.Mgr;
import com.game.net.message.task.ResTaskGetPrizeErrorMessage;
import com.net.MNetHandler;

public class ResTaskGetPrizeErrorHandler extends MNetHandler {

    // 任务领奖
    override public function action(): void{
        var msg:ResTaskGetPrizeErrorMessage = ResTaskGetPrizeErrorMessage(this.message);
        // todo
    }
}
}