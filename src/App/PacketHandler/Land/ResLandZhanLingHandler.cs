using App.PacketMessage.Land;

namespace App.PacketHandler.Land
{

    public class ResLandZhanLingPacketHandler : Network.PacketHandler {

        // 占领
        public void Exec(Network.PacketMessage msg0)
        {
            ResLandZhanLingPacketMessage msg = (ResLandZhanLingPacketMessage)msg0;
            // todo
        }
    }
}