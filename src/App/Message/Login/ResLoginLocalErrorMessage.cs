
namespace App.Message.Login
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 登录(本地)错误
   */
  public class ResLoginLocalErrorMessage : Net.Message
  {
    /** 1:帐号名称非法;2:主机地址非法;3:重复登录;4:服务器非法; */
    public int error { get; set; }

    public override void Write(System.IO.BinaryWriter writer)
    {
      WriteInt(writer, error);
    }

    public override void Read(System.IO.BinaryReader reader)
    {
      this.error = ReadInt(reader);
    }

    public override int Id()
    {
      return 3;
    }
  }
}