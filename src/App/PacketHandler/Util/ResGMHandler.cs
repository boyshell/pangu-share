using App.PacketMessage.Util;

namespace App.PacketHandler.Util
{

    public class ResGMPacketHandler : Network.PacketHandler {

        // GM指令
        public void Exec(Network.PacketMessage msg0)
        {
            ResGMPacketMessage msg = (ResGMPacketMessage)msg0;
            // todo
        }
    }
}