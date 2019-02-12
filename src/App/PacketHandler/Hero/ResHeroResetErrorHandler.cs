using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroResetErrorPacketHandler : Network.PacketHandler {

        // 武将重置
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroResetErrorPacketMessage msg = (ResHeroResetErrorPacketMessage)msg0;
            // todo
        }
    }
}