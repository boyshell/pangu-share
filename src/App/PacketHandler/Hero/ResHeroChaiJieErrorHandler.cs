using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroChaiJieErrorPacketHandler : Network.PacketHandler {

        // 拆解技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroChaiJieErrorPacketMessage msg = (ResHeroChaiJieErrorPacketMessage)msg0;
            // todo
        }
    }
}