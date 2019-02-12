using App.PacketMessage.Skill;

namespace App.PacketHandler.Skill
{

    public class ResSkillResearchErrorPacketHandler : Network.PacketHandler {

        // 研究技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResSkillResearchErrorPacketMessage msg = (ResSkillResearchErrorPacketMessage)msg0;
            // todo
        }
    }
}