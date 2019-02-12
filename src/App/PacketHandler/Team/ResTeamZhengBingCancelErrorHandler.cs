using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamZhengBingCancelErrorPacketHandler : Network.PacketHandler {

        // 取消征兵
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamZhengBingCancelErrorPacketMessage msg = (ResTeamZhengBingCancelErrorPacketMessage)msg0;
            // todo
        }
    }
}