using App.PacketMessage.Gambling;

namespace App.PacketHandler.Gambling
{

    public class ResGamblingPacketHandler : Network.PacketHandler {

        // 招募
        public void Exec(Network.PacketMessage msg0)
        {
            ResGamblingPacketMessage msg = (ResGamblingPacketMessage)msg0;
            // todo
        }
    }
}