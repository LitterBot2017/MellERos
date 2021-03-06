# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from melle/AndroidSensorData.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AndroidSensorData(genpy.Message):
  _md5sum = "372a806ca71ccc42a8e0620fd67a7fcf"
  _type = "melle/AndroidSensorData"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 latitude
float64 longitude
float64 azimuth
float64 roll
float64 pitch
"""
  __slots__ = ['latitude','longitude','azimuth','roll','pitch']
  _slot_types = ['float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       latitude,longitude,azimuth,roll,pitch

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AndroidSensorData, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.azimuth is None:
        self.azimuth = 0.
      if self.roll is None:
        self.roll = 0.
      if self.pitch is None:
        self.pitch = 0.
    else:
      self.latitude = 0.
      self.longitude = 0.
      self.azimuth = 0.
      self.roll = 0.
      self.pitch = 0.

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
      buff.write(_struct_5d.pack(_x.latitude, _x.longitude, _x.azimuth, _x.roll, _x.pitch))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.latitude, _x.longitude, _x.azimuth, _x.roll, _x.pitch,) = _struct_5d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_5d.pack(_x.latitude, _x.longitude, _x.azimuth, _x.roll, _x.pitch))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.latitude, _x.longitude, _x.azimuth, _x.roll, _x.pitch,) = _struct_5d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_5d = struct.Struct("<5d")
