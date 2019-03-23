using App.PacketMessage.Util;

namespace App.PacketHandler.Util
{

    public class ResHeartBeatPacketHandler : Network.PacketHandler {

        // 心跳
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeartBeatPacketMessage msg = (ResHeartBeatPacketMessage)msg0;
            // todo
        }
    }
}