using App.PacketMessage.Land;

namespace App.PacketHandler.Land
{

    public class ResLandTunTianErrorPacketHandler : Network.PacketHandler {

        // 屯田
        public void Exec(Network.PacketMessage msg0)
        {
            ResLandTunTianErrorPacketMessage msg = (ResLandTunTianErrorPacketMessage)msg0;
            // todo
        }
    }
}