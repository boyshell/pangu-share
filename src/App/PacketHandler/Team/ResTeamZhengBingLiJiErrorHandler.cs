using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamZhengBingLiJiErrorPacketHandler : Network.PacketHandler {

        // 征兵(立即)
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamZhengBingLiJiErrorPacketMessage msg = (ResTeamZhengBingLiJiErrorPacketMessage)msg0;
            // todo
        }
    }
}