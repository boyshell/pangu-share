using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroJinJiePacketHandler : Network.PacketHandler {

        // 武将进阶
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroJinJiePacketMessage msg = (ResHeroJinJiePacketMessage)msg0;
            // todo
        }
    }
}