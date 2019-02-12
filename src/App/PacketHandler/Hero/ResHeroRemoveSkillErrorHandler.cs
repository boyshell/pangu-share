using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroRemoveSkillErrorPacketHandler : Network.PacketHandler {

        // 武将移除技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroRemoveSkillErrorPacketMessage msg = (ResHeroRemoveSkillErrorPacketMessage)msg0;
            // todo
        }
    }
}