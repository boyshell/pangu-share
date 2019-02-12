using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamZhengBingPacketHandler : Network.PacketHandler {

        // 征兵
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamZhengBingPacketMessage msg = (ResTeamZhengBingPacketMessage)msg0;
            // todo
        }
    }
}