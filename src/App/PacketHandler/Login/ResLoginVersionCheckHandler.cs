using App.PacketMessage.Login;

namespace App.PacketHandler.Login
{

    public class ResLoginVersionCheckPacketHandler : Network.PacketHandler {

        // 版本验证
        public void Exec(Network.PacketMessage msg0)
        {
            ResLoginVersionCheckPacketMessage msg = (ResLoginVersionCheckPacketMessage)msg0;
            // todo
        }
    }
}