using Util;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * BUFF触发
     */
    public class BFightBuffTrigger : Bean {

        public BFightBuffTrigger() {}
        public BFightBuffTrigger(System.IO.BinaryReader reader) => Read(reader);

        /** 序号(回合*1000000)+顺序ID */
        public int index{ get; set; }
        /** 是否加tab */
        public bool tab{ get; set; }
        /** 来源唯一ID(0表示无行为者,负数则表示建筑类型) */
        public int srcHeroUID{ get; set; }
        /** 触发者唯一ID */
        public int dstHeroUID{ get; set; }
        /** BUFF */
        public int buffID{ get; set; }
        /** 参数 */
        public System.Collections.Generic.List<int> vars{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.index);
            WriteBool(writer, this.tab);
            WriteInt(writer, this.srcHeroUID);
            WriteInt(writer, this.dstHeroUID);
            WriteInt(writer, this.buffID);
            WriteInt(writer, this.vars.Count);
            for (int t52413035 = 0; t52413035 < this.vars.Count; ++t52413035)
            {
                WriteInt(writer, vars[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.index = ReadInt(reader);
            this.tab = ReadBool(reader);
            this.srcHeroUID = ReadInt(reader);
            this.dstHeroUID = ReadInt(reader);
            this.buffID = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.vars = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.vars.Add(ReadInt(reader));
                }
            }
        }
    }
}