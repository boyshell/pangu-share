using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗
     */
    public class BFight : Bean {

        public BFight() {}
        public BFight(System.IO.BinaryReader reader) => Read(reader);

        /** 左边队伍 */
        public BFightTeam lTeam{ get; set; }
        /** 右边队伍 */
        public BFightTeam rTeam{ get; set; }
        /** 回合 */
        public System.Collections.Generic.List<BFightRound> rounds{ get; set; } = new System.Collections.Generic.List<BFightRound>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBean(writer, this.lTeam);
            WriteBean(writer, this.rTeam);
            WriteInt(writer, this.rounds.Count);
            for (int t52413035 = 0; t52413035 < this.rounds.Count; ++t52413035)
            {
                rounds[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.lTeam = ReadBool(reader) ? new BFightTeam(reader) : null;
            this.rTeam = ReadBool(reader) ? new BFightTeam(reader) : null;
            {
                int size52413035 = ReadInt(reader);
                this.rounds = new System.Collections.Generic.List<BFightRound>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.rounds.Add(new BFightRound(reader));
                }
            }
        }
    }
}