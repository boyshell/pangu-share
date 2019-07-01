package com.game.net.handler.train {

import com.Mgr;
import com.game.net.message.train.ResTrainChallengeErrorMessage;
import com.net.MNetHandler;

public class ResTrainChallengeErrorHandler extends MNetHandler {

    // 演武挑战
    override public function action(): void{
        var msg:ResTrainChallengeErrorMessage = ResTrainChallengeErrorMessage(this.message);
        // todo
    }
}
}