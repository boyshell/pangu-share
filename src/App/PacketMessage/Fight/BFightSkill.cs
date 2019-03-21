using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 使用技能
     */
    public class BFightSkill : Bean {

        public BFightSkill() {}
        public BFightSkill(System.IO.BinaryReader reader) => Read(reader);

        /** 技能ID */
        public int skillID{ get; set; }
        /** 技能目标(为空则表示开始准备) */
        public System.Collections.Generic.List<BFightTarget> targets{ get; set; } = new System.Collections.Generic.List<BFightTarget>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.skillID);
            WriteInt(writer, this.targets.Count);
            for (int t52413035 = 0; t52413035 < this.targets.Count; ++t52413035)
            {
                targets[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.skillID = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.targets = new System.Collections.Generic.List<BFightTarget>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.targets.Add(new BFightTarget(reader));
                }
            }
        }
    }
}