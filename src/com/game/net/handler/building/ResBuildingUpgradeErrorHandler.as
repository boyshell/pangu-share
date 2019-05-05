package com.game.net.handler.building {

import com.Mgr;
import com.game.net.message.building.ResBuildingUpgradeErrorMessage;
import com.net.MNetHandler;

public class ResBuildingUpgradeErrorHandler extends MNetHandler {

    // 建筑升级
    override public function action(): void{
        var msg:ResBuildingUpgradeErrorMessage = ResBuildingUpgradeErrorMessage(this.message);
        // todo
    }
}
}