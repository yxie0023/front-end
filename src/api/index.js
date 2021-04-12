// axios封装
import request from "@/api/request";

// 登录接口  http://www.superprotector.tk:8880     3.134.83.160
export const getAll = data => request.post("http://3.134.83.160:8880/vacTenToNineteen/getAll", data);
export const getVaccineList = data => request.post("http://3.134.83.160:8880/combinedVaccineDescEffects/getAllList", data);

