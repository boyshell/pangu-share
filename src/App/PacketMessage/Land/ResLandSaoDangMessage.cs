using App.PacketMessage.Fight;

namespace App.PacketMessage.Land
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 扫荡
     */
    public class ResLandSaoDangPacketMessage : Network.PacketMessage
    {
        /** 领地类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:木材][6:铁矿][7:石料][8:粮草][9:预备兵][10:统帅][11:队伍数量][12:征兵队列数量][13:税收][14:征兵时间减少][15:预备兵恢复时间减少][16:前锋数量][17:预备兵上限][18:武将兵力上限][19:资源上限][20:木材(产量)][21:铁矿(产量)][22:石料(产量)][23:粮草(产量)][24:名望][25:名望上限][26:交易比例提升][27:税收比例提升][28:产量比例提升][29:武将卡获取经验比例提升][30:武将卡体力恢复比例提升][31:政令] */
        public int type{ get; set; }
        /** 领地等级 */
        public int level{ get; set; }
        /** 战斗结果 */
        public BFight result{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.type);
            WriteInt(writer, this.level);
            WriteBean(writer, this.result);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.type = ReadInt(reader);
            this.level = ReadInt(reader);
            this.result = ReadBool(reader) ? new BFight(reader) : null;
        }

      public override int Id
      {
        get { return 375; }
      }
    }
}