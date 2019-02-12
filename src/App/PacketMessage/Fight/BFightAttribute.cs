using Util;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗属性
     */
    public class BFightAttribute : Bean {

        public BFightAttribute() {}
        public BFightAttribute(System.IO.BinaryReader reader) => Read(reader);

        /** 战斗属性类型[1:攻击][2:防御][3:谋略][4:速度][5:攻城][6:普攻距离][7:伤害提升][8:两次攻击概率] */
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