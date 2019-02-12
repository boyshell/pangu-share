using App.PacketMessage.Skill;

namespace App.PacketHandler.Skill
{

    public class ResSkillRemovePacketHandler : Network.PacketHandler {

        // 移除技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResSkillRemovePacketMessage msg = (ResSkillRemovePacketMessage)msg0;
            // todo
        }
    }
}