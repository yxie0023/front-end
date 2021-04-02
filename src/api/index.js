// axios封装
import request from "@/api/request";

// 登录接口
export const getAll = data => request.post("http://www.superprotector.tk:8880/vacTenToNineteen/getAll", data);

