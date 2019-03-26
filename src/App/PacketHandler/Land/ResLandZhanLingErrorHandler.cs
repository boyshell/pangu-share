using App.PacketMessage.Land;

namespace App.PacketHandler.Land
{

    public class ResLandZhanLingErrorPacketHandler : Network.PacketHandler {

        // 占领
        public void Exec(Network.PacketMessage msg0)
        {
            ResLandZhanLingErrorPacketMessage msg = (ResLandZhanLingErrorPacketMessage)msg0;
            // todo
        }
    }
}