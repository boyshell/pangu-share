using Util;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 兵力变更
     */
    public class BFightHeroBingLiChange : Bean {

        public BFightHeroBingLiChange() {}
        public BFightHeroBingLiChange(System.IO.BinaryReader reader) => Read(reader);

        /** 序号(回合*1000000)+顺序ID */
        public int index{ get; set; }
        /** 是否加tab */
        public bool tab{ get; set; }
        /** 来源唯一ID(0表示无行为者,负数则表示建筑类型) */
        public int srcHeroUID{ get; set; }
        /** 来源技能ID */
        public int srcSkillID{ get; set; }
        /** 兵力变更的武将卡 */
        public int dstHeroUID{ get; set; }
        /** 变更后的兵力 */
        public int bingLi{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.index);
            WriteBool(writer, this.tab);
            WriteInt(writer, this.srcHeroUID);
            WriteInt(writer, this.srcSkillID);
            WriteInt(writer, this.dstHeroUID);
            WriteInt(writer, this.bingLi);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.index = ReadInt(reader);
            this.tab = ReadBool(reader);
            this.srcHeroUID = ReadInt(reader);
            this.srcSkillID = ReadInt(reader);
            this.dstHeroUID = ReadInt(reader);
            this.bingLi = ReadInt(reader);
        }
    }
}