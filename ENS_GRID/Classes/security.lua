Security = class(function(acc)
end)

function Security:Init()
  --[[
  self.minStepPrice = getParamEx(class, code, "SEC_PRICE_STEP").param_value + 0
  self.STEPPRICET = getParamEx(class, code, "STEPPRICET").param_value + 0
  if self.minStepPrice == nil or tonumber(self.minStepPrice) == 0 then
    message("��� ����������� "..code.." ��� ������������ ���� ���� � �����. �������� ��� � ������� ������������", 2)
  end
  self.lotSize = getParamEx(class, code, "LOTSIZE").param_value + 0
  if self.lotSize == nil or tonumber(self.lotSize) == 0 then
    message("��� ����������� "..code.." ��� ������� ���� � �����. �������� ��� � ������� ������������", 2)
  end
  --]]
  self.last = 0
  self.code = ''
  self.class = ''
  --self.testCode = 'testCode 6655'
end

function Security:Update(class, code)
  self.code = code
  self.class = class
  self.last = getParamEx(self.class, self.code, "LAST").param_value + 0
end