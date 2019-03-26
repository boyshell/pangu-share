using App.PacketMessage.Land;

namespace App.PacketHandler.Land
{

    public class ResLandLianBingErrorPacketHandler : Network.PacketHandler {

        // 练兵
        public void Exec(Network.PacketMessage msg0)
        {
            ResLandLianBingErrorPacketMessage msg = (ResLandLianBingErrorPacketMessage)msg0;
            // todo
        }
    }
}