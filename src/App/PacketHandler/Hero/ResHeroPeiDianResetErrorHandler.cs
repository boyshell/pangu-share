using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroPeiDianResetErrorPacketHandler : Network.PacketHandler {

        // 重置武将配点
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroPeiDianResetErrorPacketMessage msg = (ResHeroPeiDianResetErrorPacketMessage)msg0;
            // todo
        }
    }
}