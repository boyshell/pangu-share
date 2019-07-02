package com.game.net.handler.task {

import com.Mgr;
import com.game.net.message.task.ResTaskUpdateMessage;
import com.net.MNetHandler;

public class ResTaskUpdateHandler extends MNetHandler {

    // 添加任务
    override public function action(): void{
        var msg:ResTaskUpdateMessage = ResTaskUpdateMessage(this.message);
        // todo
    }
}
}