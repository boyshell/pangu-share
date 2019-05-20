package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQInitMessage;
import com.net.MNetHandler;

public class ResQQInitHandler extends MNetHandler {

    // 初始化社交
    override public function action(): void{
        var msg:ResQQInitMessage = ResQQInitMessage(this.message);
        // todo
    }
}
}