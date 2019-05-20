package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQAddMessage;
import com.net.MNetHandler;

public class ResQQAddHandler extends MNetHandler {

    // 添加社交关系
    override public function action(): void{
        var msg:ResQQAddMessage = ResQQAddMessage(this.message);
        // todo
    }
}
}