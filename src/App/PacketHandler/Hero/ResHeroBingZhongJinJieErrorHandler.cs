using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroBingZhongJinJieErrorPacketHandler : Network.PacketHandler {

        // 武将兵种进阶
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroBingZhongJinJieErrorPacketMessage msg = (ResHeroBingZhongJinJieErrorPacketMessage)msg0;
            // todo
        }
    }
}