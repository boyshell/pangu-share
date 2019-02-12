using Util;

namespace App.PacketMessage.Building
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑
     */
    public class BBuilding : Bean {

        public BBuilding() {}
        public BBuilding(System.IO.BinaryReader reader) => Read(reader);

        /** 建筑ID */
        public int buildingID{ get; set; }
        /** 等级 */
        public int level{ get; set; }
        /** 升级时间 */
        public int upgradeTime{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.buildingID);
            WriteInt(writer, this.level);
            WriteInt(writer, this.upgradeTime);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.buildingID = ReadInt(reader);
            this.level = ReadInt(reader);
            this.upgradeTime = ReadInt(reader);
        }
    }
}