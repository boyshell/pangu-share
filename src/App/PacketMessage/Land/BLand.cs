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

        /** 类型[1:统帅][2:队伍数量][3:征兵队列数量][4:税收][5:征兵时间减少][6:预备兵恢复时间减少][7:前锋数量][8:预备兵上限][9:武将兵力上限][10:资源上限][11:木材(产量)][12:铁矿(产量)][13:石料(产量)][14:粮草(产量)][15:名望上限][16:交易比例提升][17:税收比例提升][18:产量比例提升][19:武将卡获取经验比例提升][20:武将卡体力恢复比例提升] */
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