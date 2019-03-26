using App.PacketMessage.Land;

namespace App.PacketHandler.Land
{

    public class ResLandFangQiPacketHandler : Network.PacketHandler {

        // 放弃
        public void Exec(Network.PacketMessage msg0)
        {
            ResLandFangQiPacketMessage msg = (ResLandFangQiPacketMessage)msg0;
            // todo
        }
    }
}