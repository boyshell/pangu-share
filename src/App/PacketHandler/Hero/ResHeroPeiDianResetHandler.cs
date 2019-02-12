using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroPeiDianResetPacketHandler : Network.PacketHandler {

        // 重置武将配点
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroPeiDianResetPacketMessage msg = (ResHeroPeiDianResetPacketMessage)msg0;
            // todo
        }
    }
}