// 简单示例：自己发送“测试”时提示 QQToast
import sama.october.QSad.javaplugin.api.MsgData;

// 注册菜单或回调可选，这里直接实现 onMsg
void onMsg(MsgData data) {
    // 只处理自己发送的消息且文本为“测试”
    if (data.userUin.equals(myUin) && "测试".equals(data.msg.trim())) {
        QQToast(2, "插件系统工作正常！");
    }
}
