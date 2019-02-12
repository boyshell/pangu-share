using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroJueXingPacketHandler : Network.PacketHandler {

        // 武将觉醒
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroJueXingPacketMessage msg = (ResHeroJueXingPacketMessage)msg0;
            // todo
        }
    }
}