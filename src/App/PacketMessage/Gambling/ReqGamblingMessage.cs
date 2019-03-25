
namespace App.PacketMessage.Gambling
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 招募
     */
    public class ReqGamblingPacketMessage : Network.PacketMessage
    {
        /** 卡包ID */
        public int gmablingHouseID{ get; set; }
        /** 招募次数 */
        public int times{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.gmablingHouseID);
            WriteInt(writer, this.times);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.gmablingHouseID = ReadInt(reader);
            this.times = ReadInt(reader);
        }

      public override int Id
      {
        get { return 359; }
      }
    }
}