using App.PacketMessage.Land;

namespace App.PacketHandler.Land
{

    public class ResLandFangQiErrorPacketHandler : Network.PacketHandler {

        // 放弃
        public void Exec(Network.PacketMessage msg0)
        {
            ResLandFangQiErrorPacketMessage msg = (ResLandFangQiErrorPacketMessage)msg0;
            // todo
        }
    }
}