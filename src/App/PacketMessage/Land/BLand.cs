using Util;
using App.PacketMessage.Land;

namespace App.PacketMessage.Land
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 领地
     */
    public class BLand : Bean {

        public BLand() {}
        public BLand(System.IO.BinaryReader reader) => Read(reader);

        /** 类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:木材][6:铁矿][7:石料][8:粮草][9:预备兵][10:名望][11:政令] */
        public int type{ get; set; }
        /** 等级信息 */
        public System.Collections.Generic.List<BLandLevel> levels{ get; set; } = new System.Collections.Generic.List<BLandLevel>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.type);
            WriteInt(writer, this.levels.Count);
            for (int t52413035 = 0; t52413035 < this.levels.Count; ++t52413035)
            {
                levels[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.type = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.levels = new System.Collections.Generic.List<BLandLevel>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.levels.Add(new BLandLevel(reader));
                }
            }
        }
    }
}