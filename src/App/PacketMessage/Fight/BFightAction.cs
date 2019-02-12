using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗行为
     */
    public class BFightAction : Bean {

        public BFightAction() {}
        public BFightAction(System.IO.BinaryReader reader) => Read(reader);

        /** 行为者唯一ID(0表示无行为者,负数则表示建筑类型) */
        public int heroUID{ get; set; }
        /** 移除的buff(uid) */
        public System.Collections.Generic.List<int> removedBuffs{ get; set; } = new System.Collections.Generic.List<int>();
        /** buff行为 */
        public System.Collections.Generic.List<BFightActionBuffTick> buffActions{ get; set; } = new System.Collections.Generic.List<BFightActionBuffTick>();
        /** 技能行为 */
        public System.Collections.Generic.List<BFightActionSkill> skillActions{ get; set; } = new System.Collections.Generic.List<BFightActionSkill>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.removedBuffs.Count);
            for (int t52413035 = 0; t52413035 < this.removedBuffs.Count; ++t52413035)
            {
                WriteInt(writer, removedBuffs[t52413035]);
            }
            WriteInt(writer, this.buffActions.Count);
            for (int t52413035 = 0; t52413035 < this.buffActions.Count; ++t52413035)
            {
                buffActions[t52413035].Write(writer);
            }
            WriteInt(writer, this.skillActions.Count);
            for (int t52413035 = 0; t52413035 < this.skillActions.Count; ++t52413035)
            {
                skillActions[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.removedBuffs = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.removedBuffs.Add(ReadInt(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.buffActions = new System.Collections.Generic.List<BFightActionBuffTick>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.buffActions.Add(new BFightActionBuffTick(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.skillActions = new System.Collections.Generic.List<BFightActionSkill>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.skillActions.Add(new BFightActionSkill(reader));
                }
            }
        }
    }
}