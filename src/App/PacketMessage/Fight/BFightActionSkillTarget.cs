using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能目标
     */
    public class BFightActionSkillTarget : Bean {

        public BFightActionSkillTarget() {}
        public BFightActionSkillTarget(System.IO.BinaryReader reader) => Read(reader);

        /** 武将卡唯一ID */
        public int heroUID{ get; set; }
        /** 添加的buff */
        public System.Collections.Generic.List<BFightActionBuffAdd> buffs{ get; set; } = new System.Collections.Generic.List<BFightActionBuffAdd>();
        /** 当前兵力 */
        public int bingLi{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.buffs.Count);
            for (int t52413035 = 0; t52413035 < this.buffs.Count; ++t52413035)
            {
                buffs[t52413035].Write(writer);
            }
            WriteInt(writer, this.bingLi);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.buffs = new System.Collections.Generic.List<BFightActionBuffAdd>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.buffs.Add(new BFightActionBuffAdd(reader));
                }
            }
            this.bingLi = ReadInt(reader);
        }
    }
}