using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroRemovePacketHandler : Network.PacketHandler {

        // 移除武将卡
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroRemovePacketMessage msg = (ResHeroRemovePacketMessage)msg0;
            // todo
        }
    }
}