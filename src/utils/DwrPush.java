package utils;

import java.util.Collection;

import org.directwebremoting.ScriptBuffer;
import org.directwebremoting.ScriptSession;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.proxy.dwr.Util;

public class DwrPush {
	public static void Send(String msg){
		WebContext webContext = WebContextFactory.get();
		Collection<ScriptSession> sessions = webContext.getAllScriptSessions();
		//构建发送所需的js脚本
		ScriptBuffer scriptBuffer = new ScriptBuffer();
		//调用客户端的js脚本函数
		scriptBuffer.appendScript("callback(");
		//可以在此添加对msg的业务处理
		scriptBuffer.appendData(msg);
		scriptBuffer.appendScript(")");
		//发送消息的session对象
		Util util = new Util(sessions);
		util.addScript(scriptBuffer);
	}
	
}
