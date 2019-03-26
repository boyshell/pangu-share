using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroLevelUpdatePacketHandler : Network.PacketHandler {

        // 武将等级or经验变更
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroLevelUpdatePacketMessage msg = (ResHeroLevelUpdatePacketMessage)msg0;
            // todo
        }
    }
}