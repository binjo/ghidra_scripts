# query and apply enum/equators from https://magnumdb.com, inspired by https://github.com/lucasg/idamagnum/blob/master/idamagnum_plugin.py
#@author  binjo
#@category Symbol
#@keybinding 
#@menupath 
#@toolbar 


#TODO Add User Code Here
import urllib
import urllib2
import json

url = 'https://www.magnumdb.com/api.aspx'
user_agent = {'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36'}

data = {}
data['key'] = 'f344dc86-7796-499f-be38-ec39a5414289'
data['q'] = ''

operand = state.getCurrentLocation().operandRepresentation
if not operand.startswith('0x'):
    println('[-] not a hex value')
    exit

data['q'] = operand
full_url = url + '?' + urllib.urlencode(data)
# print full_url
req = urllib2.Request(full_url, headers=user_agent)
try:
    res = urllib2.urlopen(req)
    ser = json.loads(res.read())
    if ser.has_key("Items") and len(ser["Items"]) >= 1:
        title = ser["Items"][0]["Title"]
        println(title)
        println(ser["Items"][0]["DisplayFilePath"])
        # enum = ghidra.program.model.data.EnumDataType('magnum_' + title, 4)
        # enum.add(title, int(operand, 16))
        # currentProgram.getDataTypeManager().addDataType(enum, ghidra.program.model.data.DataTypeConflictHandler.DEFAULT_HANDLER)
        # ghidra.program.database.symbol.EquateManager.createEquate(title, int(operand, 16))
    else:
        println('[-] failed to query...')
except urllib2.HTTPError as e:
    println('[-] failed to query, ' + e.reason)
