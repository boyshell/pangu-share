using App.PacketMessage.Util;

namespace App.PacketHandler.Util
{

    public class ResKickPacketHandler : Network.PacketHandler {

        // 踢人
        public void Exec(Network.PacketMessage msg0)
        {
            ResKickPacketMessage msg = (ResKickPacketMessage)msg0;
            // todo
        }
    }
}