using Util;
using App.PacketMessage.Hero;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗武将卡
     */
    public class BFightHero : Bean {

        public BFightHero() {}
        public BFightHero(System.IO.BinaryReader reader) => Read(reader);

        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 武将ID */
        public int heroID{ get; set; }
        /** 星 */
        public int star{ get; set; }
        /** 等级 */
        public int level{ get; set; }
        /** 是否觉醒 */
        public bool jueXing{ get; set; }
        /** 当前兵种 */
        public BHeroBingZhong bingZhong{ get; set; }
        /** 初始兵力 */
        public int sBingLi{ get; set; }
        /** 结束兵力 */
        public int eBingLi{ get; set; }
        /** 伤兵 */
        public int hBingLi{ get; set; }
        /** 位置[1:大营][2:中军][3:前锋] */
        public int position{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.heroID);
            WriteInt(writer, this.star);
            WriteInt(writer, this.level);
            WriteBool(writer, this.jueXing);
            WriteBean(writer, this.bingZhong);
            WriteInt(writer, this.sBingLi);
            WriteInt(writer, this.eBingLi);
            WriteInt(writer, this.hBingLi);
            WriteInt(writer, this.position);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.heroID = ReadInt(reader);
            this.star = ReadInt(reader);
            this.level = ReadInt(reader);
            this.jueXing = ReadBool(reader);
            this.bingZhong = ReadBool(reader) ? new BHeroBingZhong(reader) : null;
            this.sBingLi = ReadInt(reader);
            this.eBingLi = ReadInt(reader);
            this.hBingLi = ReadInt(reader);
            this.position = ReadInt(reader);
        }
    }
}