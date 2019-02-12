using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroPeiDianErrorPacketHandler : Network.PacketHandler {

        // 武将配点
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroPeiDianErrorPacketMessage msg = (ResHeroPeiDianErrorPacketMessage)msg0;
            // todo
        }
    }
}