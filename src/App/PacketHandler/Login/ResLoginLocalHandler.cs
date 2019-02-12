using App.PacketMessage.Login;

namespace App.PacketHandler.Login
{

    public class ResLoginLocalPacketHandler : Network.PacketHandler {

        // 登录(本地)
        public void Exec(Network.PacketMessage msg0)
        {
            ResLoginLocalPacketMessage msg = (ResLoginLocalPacketMessage)msg0;
            // todo
        }
    }
}