using App.PacketMessage.Land;

namespace App.PacketHandler.Land
{

    public class ResLandSaoDangErrorPacketHandler : Network.PacketHandler {

        // 扫荡
        public void Exec(Network.PacketMessage msg0)
        {
            ResLandSaoDangErrorPacketMessage msg = (ResLandSaoDangErrorPacketMessage)msg0;
            // todo
        }
    }
}