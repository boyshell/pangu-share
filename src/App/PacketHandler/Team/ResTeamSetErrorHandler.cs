using App.PacketMessage.Team;

namespace App.PacketHandler.Team
{

    public class ResTeamSetErrorPacketHandler : Network.PacketHandler {

        // 队伍设置
        public void Exec(Network.PacketMessage msg0)
        {
            ResTeamSetErrorPacketMessage msg = (ResTeamSetErrorPacketMessage)msg0;
            // todo
        }
    }
}