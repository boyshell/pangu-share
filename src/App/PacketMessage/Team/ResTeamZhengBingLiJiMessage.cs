using App.PacketMessage.Team;

namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 征兵(立即)
     */
    public class ResTeamZhengBingLiJiPacketMessage : Network.PacketMessage
    {
        /** 武将卡信息 */
        public System.Collections.Generic.List<BTeamHero> heroes{ get; set; } = new System.Collections.Generic.List<BTeamHero>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroes.Count);
            for (int t52413035 = 0; t52413035 < this.heroes.Count; ++t52413035)
            {
                heroes[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            {
                int size52413035 = ReadInt(reader);
                this.heroes = new System.Collections.Generic.List<BTeamHero>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.heroes.Add(new BTeamHero(reader));
                }
            }
        }

      public override int Id
      {
        get { return 325; }
      }
    }
}