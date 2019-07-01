package com.game.net.handler.train {

import com.Mgr;
import com.game.net.message.train.ResTrainRefreshErrorMessage;
import com.net.MNetHandler;

public class ResTrainRefreshErrorHandler extends MNetHandler {

    // 队伍设置
    override public function action(): void{
        var msg:ResTrainRefreshErrorMessage = ResTrainRefreshErrorMessage(this.message);
        // todo
    }
}
}