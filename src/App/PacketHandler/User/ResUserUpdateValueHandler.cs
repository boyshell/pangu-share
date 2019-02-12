using App.PacketMessage.User;

namespace App.PacketHandler.User
{

    public class ResUserUpdateValuePacketHandler : Network.PacketHandler {

        // 更新值
        public void Exec(Network.PacketMessage msg0)
        {
            ResUserUpdateValuePacketMessage msg = (ResUserUpdateValuePacketMessage)msg0;
            // todo
        }
    }
}