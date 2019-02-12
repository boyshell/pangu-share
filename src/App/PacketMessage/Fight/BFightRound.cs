using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗回合
     */
    public class BFightRound : Bean {

        public BFightRound() {}
        public BFightRound(System.IO.BinaryReader reader) => Read(reader);

        /** 行为 */
        public System.Collections.Generic.List<BFightAction> actions{ get; set; } = new System.Collections.Generic.List<BFightAction>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.actions.Count);
            for (int t52413035 = 0; t52413035 < this.actions.Count; ++t52413035)
            {
                actions[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            {
                int size52413035 = ReadInt(reader);
                this.actions = new System.Collections.Generic.List<BFightAction>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.actions.Add(new BFightAction(reader));
                }
            }
        }
    }
}