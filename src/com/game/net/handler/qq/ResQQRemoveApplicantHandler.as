package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQRemoveApplicantMessage;
import com.net.MNetHandler;

public class ResQQRemoveApplicantHandler extends MNetHandler {

    // 移除社交关系(申请者)
    override public function action(): void{
        var msg:ResQQRemoveApplicantMessage = ResQQRemoveApplicantMessage(this.message);
        // todo
    }
}
}