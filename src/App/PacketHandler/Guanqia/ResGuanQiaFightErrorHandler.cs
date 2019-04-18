using App.PacketMessage.Guanqia;

namespace App.PacketHandler.Guanqia
{

    public class ResGuanQiaFightErrorPacketHandler : Network.PacketHandler {

        // 闯关
        public void Exec(Network.PacketMessage msg0)
        {
            ResGuanQiaFightErrorPacketMessage msg = (ResGuanQiaFightErrorPacketMessage)msg0;
            // todo
        }
    }
}