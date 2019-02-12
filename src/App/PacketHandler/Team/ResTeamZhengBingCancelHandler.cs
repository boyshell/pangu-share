using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamZhengBingCancelPacketHandler : Network.PacketHandler {

        // 取消征兵
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamZhengBingCancelPacketMessage msg = (ResTeamZhengBingCancelPacketMessage)msg0;
            // todo
        }
    }
}