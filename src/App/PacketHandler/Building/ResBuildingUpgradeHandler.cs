using App.PacketMessage.Building;

namespace App.PacketHandler.Building
{

    public class ResBuildingUpgradePacketHandler : Network.PacketHandler {

        // 建筑升级
        public void Exec(Network.PacketMessage msg0)
        {
            ResBuildingUpgradePacketMessage msg = (ResBuildingUpgradePacketMessage)msg0;
            // todo
        }
    }
}