using App.PacketMessage.Building;

namespace App.PacketMessage.Building
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑升级
     */
    public class ResBuildingUpgradePacketMessage : Network.PacketMessage
    {
        /** 建筑信息 */
        public BBuilding building{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBean(writer, this.building);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.building = ReadBool(reader) ? new BBuilding(reader) : null;
        }

      public override int Id
      {
        get { return 355; }
      }
    }
}