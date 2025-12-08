package sama.october.QSad.hook.redpacket;

import java.util.LinkedHashMap;
import java.util.Map;
import sama.october.QSad.javaplugin.api.MsgData;
import sama.october.QSad.utils.qq.QQCurrentEnv;

public class GrabLuckyRedPacket {
    private String authkey;
    private String listid;
    private MsgData msgData;
    private String pre_grap_token;

    private Map<String, String> getHbgrabReqMap() {
        String currentUin = QQCurrentEnv.getCurrentUin();
        String currentNickname = QQCurrentEnv.getCurrentNickname();
        LinkedHashMap<String, String> map = new LinkedHashMap<>();
        map.put("subchanne", null);
        map.put("authkey", this.authkey);
        map.put("hb_from", "0");
        map.put("agreement", "0");
        map.put("pay_flag", "0");
        map.put("groupid", this.msgData.peerUin);
        map.put("channel", "1");
        map.put("pre_grap_token", this.pre_grap_token);
        map.put("senderuin", this.msgData.userUin);
        map.put("listid", this.listid);
        map.put("grouptype", "1");
        map.put("sub_guild_id", null);
        map.put("answer", null);
        map.put("groupuin", this.msgData.userUin);
        map.put("tinyid", null);
        map.put("guild_id", null);
        map.put("name", currentNickname);
        map.put("uin", currentUin);
        map.put("msg_md5", null);
        map.put("msg_seq", null);
        map.put("msg_id", null);
        return map;
    }

    public void doGrab(RedPacketHook redPacketHook, String listid, String authkey, MsgData msgData, String pre_grap_token, boolean needCheck, boolean isAggressive) {
        this.listid = listid;
        this.authkey = authkey;
        this.msgData = msgData;
        this.pre_grap_token = pre_grap_token;
        new DoGrabRedPacket(redPacketHook, msgData, getHbgrabReqMap(), needCheck, isAggressive).doGrabHb();
    }
}
