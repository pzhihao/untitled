package com.pzhihao.action


import com.opensymphony.xwork2.Action
import com.opensymphony.xwork2.ActionContext
import com.opensymphony.xwork2.ActionSupport
import org.apache.commons.io.FileUtils
import org.apache.struts2.ServletActionContext
import java.io.File

/**
 * Created by pengzhihao on 2017/5/26.
 */
class KtLoginAction : ActionSupport() {

    var username:String?=null
    var password:String?=null
    //文件
    var upload:File?=null
    //文件名
    var uploadFileName:String?=null
    //文件类型
    var uploadContentType:String?=null



    override  fun execute(): String{

        if (null!=username){

            ActionContext.getContext().put("user",username)
            ActionContext.getContext().session.put("pwd",password)

            var realPath = ServletActionContext.getServletContext().getRealPath("/upload/${uploadFileName}")
            if (null!=upload){
                var file:File=File(realPath)
                if (!file.parentFile.exists()){
                    file.parentFile.mkdirs()
                }
                FileUtils.copyFile(upload,file)
            }

            ActionContext.getContext().put("msg","上传成功")
            ActionContext.getContext().put("filename",uploadFileName)



            return Action.SUCCESS

        }else{

            return Action.INPUT
        }


    }



}