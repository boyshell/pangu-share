package com.game.net.handler.task {

import com.Mgr;
import com.game.net.message.task.ResTaskAddMessage;
import com.net.MNetHandler;

public class ResTaskAddHandler extends MNetHandler {

    // 添加任务
    override public function action(): void{
        var msg:ResTaskAddMessage = ResTaskAddMessage(this.message);
        // todo
    }
}
}