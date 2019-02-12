using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroAddPacketHandler : Network.PacketHandler {

        // 添加武将卡
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroAddPacketMessage msg = (ResHeroAddPacketMessage)msg0;
            // todo
        }
    }
}