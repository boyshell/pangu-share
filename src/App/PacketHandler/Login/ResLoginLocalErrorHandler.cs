using App.PacketMessage.Login;

namespace App.PacketHandler.Login
{

    public class ResLoginLocalErrorPacketHandler : Network.PacketHandler {

        // 登录(本地)
        public void Exec(Network.PacketMessage msg0)
        {
            ResLoginLocalErrorPacketMessage msg = (ResLoginLocalErrorPacketMessage)msg0;
            // todo
        }
    }
}