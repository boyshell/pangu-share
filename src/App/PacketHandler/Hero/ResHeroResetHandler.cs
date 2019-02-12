using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroResetPacketHandler : Network.PacketHandler {

        // 武将重置
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroResetPacketMessage msg = (ResHeroResetPacketMessage)msg0;
            // todo
        }
    }
}