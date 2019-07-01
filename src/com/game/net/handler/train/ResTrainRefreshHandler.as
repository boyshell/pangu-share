package com.game.net.handler.train {

import com.Mgr;
import com.game.net.message.train.ResTrainRefreshMessage;
import com.net.MNetHandler;

public class ResTrainRefreshHandler extends MNetHandler {

    // 队伍设置
    override public function action(): void{
        var msg:ResTrainRefreshMessage = ResTrainRefreshMessage(this.message);
        // todo
    }
}
}