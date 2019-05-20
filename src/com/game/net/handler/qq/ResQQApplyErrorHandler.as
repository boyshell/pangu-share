package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQApplyErrorMessage;
import com.net.MNetHandler;

public class ResQQApplyErrorHandler extends MNetHandler {

    // 申请社交关系
    override public function action(): void{
        var msg:ResQQApplyErrorMessage = ResQQApplyErrorMessage(this.message);
        // todo
    }
}
}