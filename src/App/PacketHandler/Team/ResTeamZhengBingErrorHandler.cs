using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamZhengBingErrorPacketHandler : Network.PacketHandler {

        // 征兵
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamZhengBingErrorPacketMessage msg = (ResTeamZhengBingErrorPacketMessage)msg0;
            // todo
        }
    }
}