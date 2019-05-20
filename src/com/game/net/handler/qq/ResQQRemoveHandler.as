package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQRemoveMessage;
import com.net.MNetHandler;

public class ResQQRemoveHandler extends MNetHandler {

    // 移除社交关系
    override public function action(): void{
        var msg:ResQQRemoveMessage = ResQQRemoveMessage(this.message);
        // todo
    }
}
}