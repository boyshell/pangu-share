using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroBingZhongUnlockErrorPacketHandler : Network.PacketHandler {

        // 武将兵种解锁
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroBingZhongUnlockErrorPacketMessage msg = (ResHeroBingZhongUnlockErrorPacketMessage)msg0;
            // todo
        }
    }
}