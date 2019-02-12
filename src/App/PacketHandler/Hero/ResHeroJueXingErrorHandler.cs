using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroJueXingErrorPacketHandler : Network.PacketHandler {

        // 武将觉醒
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroJueXingErrorPacketMessage msg = (ResHeroJueXingErrorPacketMessage)msg0;
            // todo
        }
    }
}