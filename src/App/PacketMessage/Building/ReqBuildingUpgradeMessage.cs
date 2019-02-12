
namespace App.PacketMessage.Building
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑升级
     */
    public class ReqBuildingUpgradePacketMessage : Network.PacketMessage
    {
        /** 建筑ID */
        public int buildingID{ get; set; }
        /** 是否立即完成 */
        public bool immediately{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.buildingID);
            WriteBool(writer, this.immediately);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.buildingID = ReadInt(reader);
            this.immediately = ReadBool(reader);
        }

      public override int Id
      {
        get { return 354; }
      }
    }
}