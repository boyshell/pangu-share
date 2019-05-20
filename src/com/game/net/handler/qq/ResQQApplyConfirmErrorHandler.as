package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQApplyConfirmErrorMessage;
import com.net.MNetHandler;

public class ResQQApplyConfirmErrorHandler extends MNetHandler {

    // 确认社交关系
    override public function action(): void{
        var msg:ResQQApplyConfirmErrorMessage = ResQQApplyConfirmErrorMessage(this.message);
        // todo
    }
}
}