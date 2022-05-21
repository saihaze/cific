module cific.value;

import cific.variable;

/// This enum shows the type of a value.
export enum CFCType
{
    CFC_INTEGER,
    CFC_NULL,
    CFC_OBJECT,
    CFC_REAL,
}

/// An integer.
export alias CFCInteger = long;

/// An object.
export class CFCObject
{
public:
    // TODO
private:
    CFCVariable[string] m_fields;
}

/// A real.
export alias CFCReal = double;

/// This class stores a value.
export class CFCValue
{
public:
    /// creates an integer
    static CFCValue create_integer(CFCInteger value)
    {
        auto ret = new CFCValue(CFCType.CFC_INTEGER);
        ret.m_value.int_val = value;
        return ret;
    }

    /// creates a null value
    static CFCValue create_null()
    {
        auto ret = new CFCValue(CFCType.CFC_NULL);
        ret.m_value.obj_val = null;
        return ret;
    }

    /// creates an object
    static CFCValue create_object()
    {
        auto ret = new CFCValue(CFCType.CFC_OBJECT);
        ret.m_value.obj_val = new CFCObject;
        return ret;
    }

    /// creates a real
    static CFCValue create_real(CFCReal value)
    {
        auto ret = new CFCValue(CFCType.CFC_REAL);
        ret.m_value.real_val = value;
        return ret;
    }
    
    /// gets the type of this value
    const(CFCType) get_type() const
    {
        return m_type;
    }
private:
    this(CFCType type)
    {
        m_type = type;
    }

    union ValueUnion
    {
        CFCInteger int_val;
        CFCObject obj_val;
        CFCReal real_val;
    }

    CFCType m_type;
    ValueUnion m_value;
}