using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroRemoveSkillPacketHandler : Network.PacketHandler {

        // 武将移除技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroRemoveSkillPacketMessage msg = (ResHeroRemoveSkillPacketMessage)msg0;
            // todo
        }
    }
}