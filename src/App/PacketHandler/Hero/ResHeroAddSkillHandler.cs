using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroAddSkillPacketHandler : Network.PacketHandler {

        // 装配技能
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroAddSkillPacketMessage msg = (ResHeroAddSkillPacketMessage)msg0;
            // todo
        }
    }
}