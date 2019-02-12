using Util;
using App.PacketMessage.Team;

namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 队伍数据
     */
    public class BTeam : Bean {

        public BTeam() {}
        public BTeam(System.IO.BinaryReader reader) => Read(reader);

        /** 队伍序号(1开始) */
        public int index{ get; set; }
        /** 武将卡列表 */
        public System.Collections.Generic.List<BTeamHero> heroes{ get; set; } = new System.Collections.Generic.List<BTeamHero>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.index);
            WriteInt(writer, this.heroes.Count);
            for (int t52413035 = 0; t52413035 < this.heroes.Count; ++t52413035)
            {
                heroes[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.index = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.heroes = new System.Collections.Generic.List<BTeamHero>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.heroes.Add(new BTeamHero(reader));
                }
            }
        }
    }
}