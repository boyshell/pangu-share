using App.PacketMessage.Gambling;

namespace App.PacketHandler.Gambling
{

    public class ResGamblingErrorPacketHandler : Network.PacketHandler {

        // 招募
        public void Exec(Network.PacketMessage msg0)
        {
            ResGamblingErrorPacketMessage msg = (ResGamblingErrorPacketMessage)msg0;
            // todo
        }
    }
}