using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroBingZhongSkillSelectPacketHandler : Network.PacketHandler {

        // 武将兵种技能选择
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroBingZhongSkillSelectPacketMessage msg = (ResHeroBingZhongSkillSelectPacketMessage)msg0;
            // todo
        }
    }
}