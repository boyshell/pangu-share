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

        /** 类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:木材][6:铁矿][7:石料][8:粮草][9:预备兵][10:统帅][11:队伍数量][12:征兵队列数量][13:税收][14:征兵时间减少][15:预备兵恢复时间减少][16:前锋数量][17:预备兵上限][18:武将兵力上限][19:资源上限][20:木材(产量)][21:铁矿(产量)][22:石料(产量)][23:粮草(产量)][24:名望][25:名望上限][26:交易比例提升][27:税收比例提升][28:产量比例提升][29:武将卡获取经验比例提升][30:武将卡体力恢复比例提升][31:政令] */
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