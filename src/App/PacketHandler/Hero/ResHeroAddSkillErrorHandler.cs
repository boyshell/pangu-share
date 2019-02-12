using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroAddSkillErrorPacketHandler : Network.PacketHandler {

        // 装配技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroAddSkillErrorPacketMessage msg = (ResHeroAddSkillErrorPacketMessage)msg0;
            // todo
        }
    }
}