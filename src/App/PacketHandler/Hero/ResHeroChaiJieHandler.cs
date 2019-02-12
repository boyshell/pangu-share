using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroChaiJiePacketHandler : Network.PacketHandler {

        // 拆解技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroChaiJiePacketMessage msg = (ResHeroChaiJiePacketMessage)msg0;
            // todo
        }
    }
}