using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamZhengBingLiJiPacketHandler : Network.PacketHandler {

        // 征兵(立即)
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamZhengBingLiJiPacketMessage msg = (ResTeamZhengBingLiJiPacketMessage)msg0;
            // todo
        }
    }
}