package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQCancelErrorMessage;
import com.net.MNetHandler;

public class ResQQCancelErrorHandler extends MNetHandler {

    // 取消社交关系
    override public function action(): void{
        var msg:ResQQCancelErrorMessage = ResQQCancelErrorMessage(this.message);
        // todo
    }
}
}