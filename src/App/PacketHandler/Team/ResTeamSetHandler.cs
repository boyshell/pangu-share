using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamSetPacketHandler : Network.PacketHandler {

        // 队伍设置
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamSetPacketMessage msg = (ResTeamSetPacketMessage)msg0;
            // todo
        }
    }
}