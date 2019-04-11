using Util;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * BUFF移除
     */
    public class BFightBuffRemove : Bean {

        public BFightBuffRemove() {}
        public BFightBuffRemove(System.IO.BinaryReader reader) => Read(reader);

        /** 序号(回合*1000000)+顺序ID */
        public int index{ get; set; }
        /** 是否加tab */
        public bool tab{ get; set; }
        /** 来源唯一ID(0表示无行为者,负数则表示建筑类型) */
        public int srcHeroUID{ get; set; }
        /** 来源技能ID */
        public int srcSkillID{ get; set; }
        /** 移除BUFF的武将卡 */
        public int dstHeroUID{ get; set; }
        /** BUFF */
        public int buffID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.index);
            WriteBool(writer, this.tab);
            WriteInt(writer, this.srcHeroUID);
            WriteInt(writer, this.srcSkillID);
            WriteInt(writer, this.dstHeroUID);
            WriteInt(writer, this.buffID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.index = ReadInt(reader);
            this.tab = ReadBool(reader);
            this.srcHeroUID = ReadInt(reader);
            this.srcSkillID = ReadInt(reader);
            this.dstHeroUID = ReadInt(reader);
            this.buffID = ReadInt(reader);
        }
    }
}