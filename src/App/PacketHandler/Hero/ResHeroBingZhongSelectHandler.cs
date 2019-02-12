using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroBingZhongSelectPacketHandler : Network.PacketHandler {

        // 武将兵种选择
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroBingZhongSelectPacketMessage msg = (ResHeroBingZhongSelectPacketMessage)msg0;
            // todo
        }
    }
}