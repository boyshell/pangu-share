using Util;

namespace App.PacketMessage.Land
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 领地等级
     */
    public class BLandLevel : Bean {

        public BLandLevel() {}
        public BLandLevel(System.IO.BinaryReader reader) => Read(reader);

        /** 等级 */
        public int level{ get; set; }
        /** 已占领数量 */
        public int num{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.level);
            WriteInt(writer, this.num);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.level = ReadInt(reader);
            this.num = ReadInt(reader);
        }
    }
}