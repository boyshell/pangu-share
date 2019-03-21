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

        /** 来源唯一ID(0表示无行为者,负数则表示建筑类型) */
        public int srcHeroUID{ get; set; }
        /** BUFF */
        public int buffID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.srcHeroUID);
            WriteInt(writer, this.buffID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.srcHeroUID = ReadInt(reader);
            this.buffID = ReadInt(reader);
        }
    }
}