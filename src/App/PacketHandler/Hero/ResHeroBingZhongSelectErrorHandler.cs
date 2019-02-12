using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroBingZhongSelectErrorPacketHandler : Network.PacketHandler {

        // 武将兵种选择
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroBingZhongSelectErrorPacketMessage msg = (ResHeroBingZhongSelectErrorPacketMessage)msg0;
            // todo
        }
    }
}