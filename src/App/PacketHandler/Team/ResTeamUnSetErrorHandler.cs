using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamUnSetErrorPacketHandler : Network.PacketHandler {

        // 队伍取消设置
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamUnSetErrorPacketMessage msg = (ResTeamUnSetErrorPacketMessage)msg0;
            // todo
        }
    }
}