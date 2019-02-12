using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamUnSetPacketHandler : Network.PacketHandler {

        // 队伍取消设置
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamUnSetPacketMessage msg = (ResTeamUnSetPacketMessage)msg0;
            // todo
        }
    }
}