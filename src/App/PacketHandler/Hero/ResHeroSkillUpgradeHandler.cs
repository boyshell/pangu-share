using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroSkillUpgradePacketHandler : Network.PacketHandler {

        // 武将技能升级
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroSkillUpgradePacketMessage msg = (ResHeroSkillUpgradePacketMessage)msg0;
            // todo
        }
    }
}