
namespace App.PacketMessage.User
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 更新属性
     */
    public class ResUserUpdateAttributePacketMessage : Network.PacketMessage
    {
        /** 类型[1:统帅][2:队伍数量][3:征兵队列数量][4:税收][5:征兵时间减少][6:预备兵恢复时间减少][7:前锋数量][8:预备兵上限][9:武将兵力上限][10:资源上限][11:木材(产量)][12:铁矿(产量)][13:石料(产量)][14:粮草(产量)][15:名望上限][16:交易比例提升][17:税收比例提升][18:产量比例提升][19:武将卡获取经验比例提升][20:武将卡体力恢复比例提升] */
        public int type{ get; set; }
        /** 值 */
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

      public override int Id
      {
        get { return 16; }
      }
    }
}