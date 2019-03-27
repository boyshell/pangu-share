
namespace App.PacketMessage.Land
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 放弃
     */
    public class ResLandFangQiPacketMessage : Network.PacketMessage
    {
        /** 领地类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:木材][6:铁矿][7:石料][8:粮草][9:预备兵][10:名望][11:政令] */
        public int type{ get; set; }
        /** 领地等级 */
        public int level{ get; set; }
        /** 领地数量 */
        public int num{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.type);
            WriteInt(writer, this.level);
            WriteInt(writer, this.num);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.type = ReadInt(reader);
            this.level = ReadInt(reader);
            this.num = ReadInt(reader);
        }

      public override int Id
      {
        get { return 366; }
      }
    }
}