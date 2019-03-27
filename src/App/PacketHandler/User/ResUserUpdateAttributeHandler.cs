using App.PacketMessage.User;

namespace App.PacketHandler.User
{

    public class ResUserUpdateAttributePacketHandler : Network.PacketHandler {

        // 更新属性
        public void Exec(Network.PacketMessage msg0)
        {
            ResUserUpdateAttributePacketMessage msg = (ResUserUpdateAttributePacketMessage)msg0;
            // todo
        }
    }
}