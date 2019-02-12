using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroJinJieErrorPacketHandler : Network.PacketHandler {

        // 武将进阶
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroJinJieErrorPacketMessage msg = (ResHeroJinJieErrorPacketMessage)msg0;
            // todo
        }
    }
}