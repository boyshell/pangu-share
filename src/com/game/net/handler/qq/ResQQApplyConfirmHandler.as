package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQApplyConfirmMessage;
import com.net.MNetHandler;

public class ResQQApplyConfirmHandler extends MNetHandler {

    // 确认社交关系
    override public function action(): void{
        var msg:ResQQApplyConfirmMessage = ResQQApplyConfirmMessage(this.message);
        // todo
    }
}
}