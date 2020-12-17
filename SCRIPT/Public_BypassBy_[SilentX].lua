  -- Build By SilentX
  -- Fell Free To Copy And Removing Credit
  -- I Recommend Not To Use Main ID Game is For Fun Don't Take it Seriously
  -- Execute This script At Logo
function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(
			szFullString,
			szSeparator,
			nFindStartIndex
		)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(
				szFullString,
				nFindStartIndex,
				string.len(szFullString)
			)
			break
		end
		nSplitArray[nSplitIndex] = string.sub(
			szFullString,
			nFindStartIndex,
			nFindLastIndex - 1
		)
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end
function xgxc(szpy, qmxg)
	for x = 1, #(qmxg) do
		xgpy = szpy + qmxg[x]["offset"]
		xglx = qmxg[x]["type"]
		xgsz = qmxg[x]["value"]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(karar)
	gg.clearResults()
	gg.setRanges(karar[1]["memory"])
	gg.searchNumber(karar[3]["value"], karar[3]["type"])
	if gg.getResultCount() == 0 then
		gg.toast(karar[2]["name"] .. "")
	else
		gg.refineNumber(karar[3]["value"], karar[3]["type"])
		gg.refineNumber(karar[3]["value"], karar[3]["type"])
		gg.refineNumber(karar[3]["value"], karar[3]["type"])
		if gg.getResultCount() == 0 then
			gg.toast(karar[2]["name"] .. "")
		else
			sl = gg.getResults(999999)
			sz = gg.getResultCount()
			xgsl = 0
			if sz > 999999 then
				sz = 999999
			end
			for i = 1, sz do
				pdsz = true
				for v = 4, #(karar) do
					if pdsz == true then
						pysz = {}
						pysz[1] = {}
						pysz[1].address = sl[i].address + karar[v]["offset"]
						pysz[1].flags = karar[v]["type"]
						szpy = gg.getValues(pysz)
						pdpd = karar[v]["lv"] .. ";" .. szpy[1].value
						szpd = split(pdpd, ";")
						tzszpd = szpd[1]
						pyszpd = szpd[2]
						if tzszpd == pyszpd then
							pdjg = true
							pdsz = true
						else
							pdjg = false
							pdsz = false
						end
					end
				end
				if pdjg == true then
					szpy = sl[i].address
					xgxc(szpy, qmxg)
					xgjg = true
				end
			end
			if xgjg == true then
				gg.toast(karar[2]["name"] .. "Modified " .. xgsl .. " Values🔍")
			else
				gg.toast(karar[2]["name"] .. "")
			end
		end
	end
end

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function setvalue(address,flags,value) PS(' Python value(Lib, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
--Bypass 3rd party
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("13,073.3740234375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(9999) 
gg.editAll("0", gg.TYPE_FLOAT) 
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.21956299e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(9999) 
gg.editAll("0", gg.TYPE_FLOAT) 
gg.clearResults()
--AntiCheat Bypass    
gg.setValues({
  [1] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1D40C98,                                                                                                                                          --AllCreditReservedBySilentX
		['flags'] = 16,
		['value'] = 0.0,
	},
	 [2] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1C57DEC,
		['flags'] = 16,
		['value'] = 0.0,
	},
	[3] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1DBA718,
		['flags'] = 16,
		['value'] = 0.1,
	},
   [4] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1d40c84,
		['flags'] = 16,
		['value'] = 0.7,
	},
	[5] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1d1ddd4,
		['flags'] = 16,
		['value'] = 0.1,
	},
	[6] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1c55c10,
		['flags'] = 16,
		['value'] = 0.1,
	},
	 [7] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1dba704,
		['flags'] = 16,
		['value'] = 0.3,
	},
	[8] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1d40d48,
		['flags'] = 16,
		['value'] = 0,
	},
   [9] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1d40cac,
		['flags'] = 16,
		['value'] = 0.1,
	},
	[10] = {
		-- Antiban
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1d1dff0,
		['flags'] = 16,
		['value'] = 0.1,
	},
	})
gg.alert("🇼​​​​​🇪​​​​​🇱​​​​​🇨​​​​​🇴​​​​​🇲​​​​​🇪​​​​​\n\nThis Script Is Build By SilentX\nThis Notification Must Be At Logo Unless Restart")
function Main()
gg.setVisible(false)
me1 = gg.multiChoice({
	"┏⌬ Wallhack + Color",
    "┏⌬ Aimbot + Instant Hit",
    "┏⌬ Headshot + MB(Every Game)", 
    "┏⌬ Recoil + Crosshair", 
    "┏⌬ No Fog + No grass",
    "┏⌬ ipad View",
    "❗ᴇxɪᴛ ❗"
  }, nil, "======☠️ ꜱɪʟᴇɴᴛx ☠️======\n   🔥ᴘᴜʙɢ ᴠᴇʀꜱɪᴏɴ : 1.1.0🔥\n           ʙᴜɪʟᴅ ʙʏ ꜱɪʟᴇɴᴛx\nAll rights reserved by SilentX\nCopyright © GAME {4368656174}")
  if me1 == nil then
  else
    if me1[1] == true then
      wh1()
      end
    if me1[2] == true then
      high()
    end
    if me1[3] == true then
      long()
    end
    if me1[4] == true then
      recoil()
    end
   if me1[5] == true then
      fon()
    end
    if me1[6] == true then
      foff()
    end
    if me1[7] == true then
      Exit()
    end
  end
  XGCK = -1
end

function wh1()
LO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ 🖤","⟬ wallhack 600+ 🔥⟭", "⟬ wallhack 710 - 855 🔥⟭")
if LO == nil then
  else
    if LO == 1 then
      L100()
    end
    if LO == 2 then
      L50()
    end
    end
  XGCK = -1
end
function L100()
 gg.clearResults()
if gg.REGION_VIDEO == nil then
VB = gg.REGION_BAD
else
VB = gg.REGION_VIDEO
end
gg.setRanges(VB)
gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
 if gg.REGION_VIDEO == nil then
VB = gg.REGION_BAD
else
VB = gg.REGION_VIDEO
end
gg.setRanges(VB)
gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
if gg.REGION_VIDEO == nil then
VB = gg.REGION_BAD
else
VB = gg.REGION_VIDEO
end
gg.clearResults()
gg.setRanges(VB)
gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WallHack 600+") 
end       

function L50()
 gg.clearResults()
if gg.REGION_VIDEO == nil then
VB = gg.REGION_BAD
else
VB = gg.REGION_VIDEO
end
gg.setRanges(VB)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
 if gg.REGION_VIDEO == nil then
VB = gg.REGION_BAD
else
VB = gg.REGION_VIDEO
end
gg.setRanges(VB)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
if gg.REGION_VIDEO == nil then
VB = gg.REGION_BAD
else
VB = gg.REGION_VIDEO
end
gg.clearResults()
gg.setRanges(VB)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WallHack 710-855") 
end
        
function high()
--aim lock
gg.setValues({
    [1] = {
		-- aimbot
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0xfb1944,
		['flags'] = 16,
		['value'] = -9.9066194e27,
	},
	[2] = {
		-- aimbot
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0xfb47ec,
		['flags'] = 16,
		['value'] = 0,
	},
	[3] = {
		-- aimbot
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0xfb47f0,
		['flags'] = 16,
		['value'] = 0,
	},
	[4] = {
		-- aimbot
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x5fc07b4,
		['flags'] = 16,
		['value'] = -9.9066194e27,
	},
	[5] = {
		-- aimbot
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x5fcd178,
		['flags'] = 16,
		['value'] = -9.0338317e22,
	},
})
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = -2122039811075405307, ["type"] = 32},
{["lv"] = -1903895621994000383, ["offset"] = -140, ["type"] = 32},
}
qmxg = {
{["value"] = -3.696555277833145E20, ["offset"] = -140, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = -2.952560267547818E20, ["type"] = 16},
{["lv"] = -3.8685626227668134E25, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = -9.906618186695805E27, ["offset"] = 0, ["type"] = 16},
{["value"] = -9.906618186695805E27, ["offset"] = 4, ["type"] = 16},
{["value"] = -9.906618186695805E27, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
gg.clearResults()
gg.setValues({
  [1] = {
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x24A74B0,
		['flags'] = 16,
		['value'] = 0,
	},
	})
gg.setValues({
  [1] = {
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x37c1ba4,
		['flags'] = 16,
		['value'] = 0,
	},
	})
end




function long() 
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3)
gg.editAll("180",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33;69.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3)
gg.editAll("180",gg.TYPE_FLOAT)
gg.clearResults()
end



function recoil()
gg.setValues({
  [1] = {
		-- recoil
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x130CBF0,
		['flags'] = 16,
		['value'] = 0,
	},
	})
	gg.clearResults()
	gg.setValues({
  [1] = {
		-- Stability
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x1BB7C74,
		['flags'] = 16,
		['value'] = 0,
	},
	})
	gg.clearResults()
	gg.setValues({
  [1] = {
		-- crosshair
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x130D1A4,
		['flags'] = 16,
		['value'] = 0,
	},
	})
	gg.alert("Recoil + Crosshair")
end

function fon()
gg.setValues({
  [1] = {
		-- No Fog
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x2C344C8,
		['flags'] = 16,
		['value'] = 0,
	},
	})
	gg.setValues({
  [1] = {
		-- No Grass
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x2475D58,
		['flags'] = 16,
		['value'] = 0,
	},
	})
gg.alert("No Fog + No Grass")
end

function foff()
gg.setValues({
  [1] = {
		-- ipad View
		['address'] = gg.getRangesList('libUE4.so')[1].start + 0x37307E0,
		['flags'] = 16,
		['value'] = 300,
	},
	})
gg.alert("ipad View")                                                                                 
end
 
function Exit()
print ("======☠️ ꜱɪʟᴇɴᴛx ☠️======\n🔥ᴘᴜʙɢ ᴠᴇʀꜱɪᴏɴ : 1.1.0🔥\nAll rights reserved by SilentX\nCopyright © GAME {4368656174}\nFollow My Telegram : @silentX1816\n~~~~~ᴛʜᴀɴᴋꜱ ꜰᴏʀ ᴜꜱɪɴɢ~~~~~")
os.exit()
end
function HOME()
  lw = 1
  Main()
end
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end


