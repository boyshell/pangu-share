using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroSkillUpgradeErrorPacketHandler : Network.PacketHandler {

        // 武将技能升级
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroSkillUpgradeErrorPacketMessage msg = (ResHeroSkillUpgradeErrorPacketMessage)msg0;
            // todo
        }
    }
}