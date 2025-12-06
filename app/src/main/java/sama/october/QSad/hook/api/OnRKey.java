package sama.october.QSad.hook.api;

import org.json.JSONObject;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.ApiHookItem;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.json.ProtoData;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

public final class OnRKey extends ApiHookItem {
    public static final ApiHookItem INSTANCE = new OnRKey();
    private static final String SERVICE_CMD = "OidbSvcTrpcTcp.0x9067_202";

    public String friendRkey;
    public String groupRkey;

    @Override
    public void loadHook() throws Throwable {
        Class<?> msgRespHandler = ClassUtils.load("mqq.app.msghandle.MsgRespHandler");
        Method dispatchRespMsg = MethodUtils.create(msgRespHandler)
                .withMethodName("dispatchRespMsg")
                .findOne();

        HookUtils.hookAlways(dispatchRespMsg, null, param -> {
            Object fromServiceMsg = FieldUtils.create(param.args[1])
                    .withName("fromServiceMsg")
                    .getValue();

            if (!SERVICE_CMD.equals(FieldUtils.create(fromServiceMsg)
                    .withName("serviceCmd")
                    .getValue()
                    .toString())) {
                return;
            }

            ProtoData data = new ProtoData();
            data.fromBytes((byte[]) FieldUtils.create(fromServiceMsg)
                    .withName("wupBuffer")
                    .getValue());
            JSONObject json = data.toJSON();

            friendRkey = json.getJSONObject("4")
                    .getJSONObject("4")
                    .getJSONArray("1")
                    .getJSONObject(0)
                    .getString("1");
            groupRkey = json.getJSONObject("4")
                    .getJSONObject("4")
                    .getJSONArray("1")
                    .getJSONObject(1)
                    .getString("1");
        });
    }
}