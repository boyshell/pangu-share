using Util;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * BUFF添加
     */
    public class BFightBuffAddErr : Bean {

        public BFightBuffAddErr() {}
        public BFightBuffAddErr(System.IO.BinaryReader reader) => Read(reader);

        /** 序号(回合*1000000)+顺序ID */
        public int index{ get; set; }
        /** 是否加tab */
        public bool tab{ get; set; }
        /** 被添加的武将卡唯一ID */
        public int dstHeroUID{ get; set; }
        /** BUFF */
        public int buffID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.index);
            WriteBool(writer, this.tab);
            WriteInt(writer, this.dstHeroUID);
            WriteInt(writer, this.buffID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.index = ReadInt(reader);
            this.tab = ReadBool(reader);
            this.dstHeroUID = ReadInt(reader);
            this.buffID = ReadInt(reader);
        }
    }
}