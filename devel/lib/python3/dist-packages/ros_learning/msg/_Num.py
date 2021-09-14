# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_learning/Num.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Num(genpy.Message):
  _md5sum = "3dbc71f4adf6d91823c26a117a2b6ba4"
  _type = "ros_learning/Num"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int64 num
int32 fsr1
int32 fsr2
int32[] fsr_raw

"""
  __slots__ = ['num','fsr1','fsr2','fsr_raw']
  _slot_types = ['int64','int32','int32','int32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       num,fsr1,fsr2,fsr_raw

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Num, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.num is None:
        self.num = 0
      if self.fsr1 is None:
        self.fsr1 = 0
      if self.fsr2 is None:
        self.fsr2 = 0
      if self.fsr_raw is None:
        self.fsr_raw = []
    else:
      self.num = 0
      self.fsr1 = 0
      self.fsr2 = 0
      self.fsr_raw = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_q2i().pack(_x.num, _x.fsr1, _x.fsr2))
      length = len(self.fsr_raw)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.Struct(pattern).pack(*self.fsr_raw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.num, _x.fsr1, _x.fsr2,) = _get_struct_q2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.fsr_raw = s.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_q2i().pack(_x.num, _x.fsr1, _x.fsr2))
      length = len(self.fsr_raw)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.fsr_raw.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.num, _x.fsr1, _x.fsr2,) = _get_struct_q2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.fsr_raw = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_q2i = None
def _get_struct_q2i():
    global _struct_q2i
    if _struct_q2i is None:
        _struct_q2i = struct.Struct("<q2i")
    return _struct_q2i
