using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗队伍
     */
    public class BFightTeam : Bean {

        public BFightTeam() {}
        public BFightTeam(System.IO.BinaryReader reader) => Read(reader);

        /** 队伍名字 */
        public string name{ get; set; }
        /** 武将 */
        public System.Collections.Generic.List<BFightHero> heroes{ get; set; } = new System.Collections.Generic.List<BFightHero>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteString(writer, this.name);
            WriteInt(writer, this.heroes.Count);
            for (int t52413035 = 0; t52413035 < this.heroes.Count; ++t52413035)
            {
                heroes[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.name = ReadString(reader);
            {
                int size52413035 = ReadInt(reader);
                this.heroes = new System.Collections.Generic.List<BFightHero>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.heroes.Add(new BFightHero(reader));
                }
            }
        }
    }
}