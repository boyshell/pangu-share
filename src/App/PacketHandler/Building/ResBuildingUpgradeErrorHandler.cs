using App.PacketMessage.Building;

namespace App.PacketHandler.Building
{

    public class ResBuildingUpgradeErrorPacketHandler : Network.PacketHandler {

        // 建筑升级
        public void Exec(Network.PacketMessage msg0)
        {
            ResBuildingUpgradeErrorPacketMessage msg = (ResBuildingUpgradeErrorPacketMessage)msg0;
            // todo
        }
    }
}