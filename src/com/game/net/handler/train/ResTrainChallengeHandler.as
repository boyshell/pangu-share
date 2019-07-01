package com.game.net.handler.train {

import com.Mgr;
import com.game.net.message.train.ResTrainChallengeMessage;
import com.net.MNetHandler;

public class ResTrainChallengeHandler extends MNetHandler {

    // 演武挑战
    override public function action(): void{
        var msg:ResTrainChallengeMessage = ResTrainChallengeMessage(this.message);
        // todo
    }
}
}