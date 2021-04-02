// axios封装
import request from "@/api/request";

// 登录接口  http://www.superprotector.tk:8880
export const getAll = data => request.post("http://172.16.173.109:8880/vacTenToNineteen/getAll", data);
export const getVaccineList = data => request.post("http://172.16.173.109:8880/combinedVaccineDescEffects/getAllList", data);

