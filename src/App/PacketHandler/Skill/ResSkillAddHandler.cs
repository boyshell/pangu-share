using App.PacketMessage.Skill;

namespace App.PacketHandler.Skill
{

    public class ResSkillAddPacketHandler : Network.PacketHandler {

        // 添加技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResSkillAddPacketMessage msg = (ResSkillAddPacketMessage)msg0;
            // todo
        }
    }
}