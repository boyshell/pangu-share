using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroBingZhongUnlockPacketHandler : Network.PacketHandler {

        // 武将兵种解锁
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroBingZhongUnlockPacketMessage msg = (ResHeroBingZhongUnlockPacketMessage)msg0;
            // todo
        }
    }
}