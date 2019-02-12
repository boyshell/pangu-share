using App.PacketMessage.Skill;

namespace App.PacketHandler.Skill
{

    public class ResSkillResearchPacketHandler : Network.PacketHandler {

        // 研究技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResSkillResearchPacketMessage msg = (ResSkillResearchPacketMessage)msg0;
            // todo
        }
    }
}