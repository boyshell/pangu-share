using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能目标
     */
    public class BFightTarget : Bean {

        public BFightTarget() {}
        public BFightTarget(System.IO.BinaryReader reader) => Read(reader);

        /** 武将卡唯一ID */
        public int heroUID{ get; set; }
        /** 当前兵力(小于0时不处理) */
        public int bingLi{ get; set; }
        /** 添加的BUFF */
        public System.Collections.Generic.List<int> addBuffs{ get; set; } = new System.Collections.Generic.List<int>();
        /** 刷新的BUFF */
        public System.Collections.Generic.List<BFightBuffTrigger> refreshBuffs{ get; set; } = new System.Collections.Generic.List<BFightBuffTrigger>();
        /** 触发的BUFF */
        public System.Collections.Generic.List<BFightBuffTrigger> triggerBuffs{ get; set; } = new System.Collections.Generic.List<BFightBuffTrigger>();
        /** 添加失败的BUFF */
        public System.Collections.Generic.List<int> failedBuffs{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.bingLi);
            WriteInt(writer, this.addBuffs.Count);
            for (int t52413035 = 0; t52413035 < this.addBuffs.Count; ++t52413035)
            {
                WriteInt(writer, addBuffs[t52413035]);
            }
            WriteInt(writer, this.refreshBuffs.Count);
            for (int t52413035 = 0; t52413035 < this.refreshBuffs.Count; ++t52413035)
            {
                refreshBuffs[t52413035].Write(writer);
            }
            WriteInt(writer, this.triggerBuffs.Count);
            for (int t52413035 = 0; t52413035 < this.triggerBuffs.Count; ++t52413035)
            {
                triggerBuffs[t52413035].Write(writer);
            }
            WriteInt(writer, this.failedBuffs.Count);
            for (int t52413035 = 0; t52413035 < this.failedBuffs.Count; ++t52413035)
            {
                WriteInt(writer, failedBuffs[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.bingLi = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.addBuffs = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.addBuffs.Add(ReadInt(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.refreshBuffs = new System.Collections.Generic.List<BFightBuffTrigger>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.refreshBuffs.Add(new BFightBuffTrigger(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.triggerBuffs = new System.Collections.Generic.List<BFightBuffTrigger>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.triggerBuffs.Add(new BFightBuffTrigger(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.failedBuffs = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.failedBuffs.Add(ReadInt(reader));
                }
            }
        }
    }
}