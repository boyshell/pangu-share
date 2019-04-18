using App.PacketMessage.Guanqia;

namespace App.PacketHandler.Guanqia
{

    public class ResGuanQiaFightPacketHandler : Network.PacketHandler {

        // 闯关
        public void Exec(Network.PacketMessage msg0)
        {
            ResGuanQiaFightPacketMessage msg = (ResGuanQiaFightPacketMessage)msg0;
            // todo
        }
    }
}