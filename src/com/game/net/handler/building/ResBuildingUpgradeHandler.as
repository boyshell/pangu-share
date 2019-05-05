package com.game.net.handler.building {

import com.Mgr;
import com.game.net.message.building.ResBuildingUpgradeMessage;
import com.net.MNetHandler;

public class ResBuildingUpgradeHandler extends MNetHandler {

    // 建筑升级
    override public function action(): void{
        var msg:ResBuildingUpgradeMessage = ResBuildingUpgradeMessage(this.message);
        // todo
    }
}
}