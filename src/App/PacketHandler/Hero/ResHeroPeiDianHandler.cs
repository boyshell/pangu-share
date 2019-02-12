using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroPeiDianPacketHandler : Network.PacketHandler {

        // 武将配点
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroPeiDianPacketMessage msg = (ResHeroPeiDianPacketMessage)msg0;
            // todo
        }
    }
}