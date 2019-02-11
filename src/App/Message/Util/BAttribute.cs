using Util;

namespace App.Message.Util
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 属性
     */
    public class BAttribute : Bean {

        public BAttribute() {}
        public BAttribute(System.IO.BinaryReader reader) => Read(reader);

        /** 属性类型[1:攻击][2:防御][3:谋略][4:速度][5:攻城] */
        public int type{ get; set; }
        /** 属性值 */
        public int value{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.type);
            WriteInt(writer, this.value);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.type = ReadInt(reader);
            this.value = ReadInt(reader);
        }
    }
}