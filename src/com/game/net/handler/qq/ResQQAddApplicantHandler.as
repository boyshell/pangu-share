package com.game.net.handler.qq {

import com.Mgr;
import com.game.net.message.qq.ResQQAddApplicantMessage;
import com.net.MNetHandler;

public class ResQQAddApplicantHandler extends MNetHandler {

    // 添加社交关系(申请者)
    override public function action(): void{
        var msg:ResQQAddApplicantMessage = ResQQAddApplicantMessage(this.message);
        // todo
    }
}
}