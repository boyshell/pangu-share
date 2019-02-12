using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroBingZhongSkillSelectErrorPacketHandler : Network.PacketHandler {

        // 武将兵种技能选择
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroBingZhongSkillSelectErrorPacketMessage msg = (ResHeroBingZhongSkillSelectErrorPacketMessage)msg0;
            // todo
        }
    }
}