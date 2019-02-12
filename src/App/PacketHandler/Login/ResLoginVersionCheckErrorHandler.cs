using App.PacketMessage.Login;

namespace App.PacketHandler.Login
{

    public class ResLoginVersionCheckErrorPacketHandler : Network.PacketHandler {

        // 版本验证
        public void Exec(Network.PacketMessage msg0)
        {
            ResLoginVersionCheckErrorPacketMessage msg = (ResLoginVersionCheckErrorPacketMessage)msg0;
            // todo
        }
    }
}