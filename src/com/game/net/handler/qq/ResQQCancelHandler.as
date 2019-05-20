package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQCancelMessage;
import com.net.MNetHandler;

public class ResQQCancelHandler extends MNetHandler {

    // 取消社交关系
    override public function action(): void{
        var msg:ResQQCancelMessage = ResQQCancelMessage(this.message);
        // todo
    }
}
}