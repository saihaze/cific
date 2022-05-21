module cific.variable;

import cific.value;

/// This class stores a variable.
export class CFCVariable
{
public:
    this(string name, CFCValue initial_value)
    {
        m_name = name;
        m_value = initial_value;
    }
private:
    string m_name;
    CFCValue m_value;
}