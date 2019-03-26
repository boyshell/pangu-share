using App.PacketMessage.Team;

namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 队伍设置
     */
    public class ResTeamSetPacketMessage : Network.PacketMessage
    {
        /** 变更的队伍 */
        public System.Collections.Generic.List<BTeam> teams{ get; set; } = new System.Collections.Generic.List<BTeam>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.teams.Count);
            for (int t52413035 = 0; t52413035 < this.teams.Count; ++t52413035)
            {
                teams[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            {
                int size52413035 = ReadInt(reader);
                this.teams = new System.Collections.Generic.List<BTeam>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.teams.Add(new BTeam(reader));
                }
            }
        }

      public override int Id
      {
        get { return 328; }
      }
    }
}