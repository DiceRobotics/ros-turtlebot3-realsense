# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from object_msgs/ObjectInBox.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import object_msgs.msg
import sensor_msgs.msg

class ObjectInBox(genpy.Message):
  _md5sum = "658b4f57dcac376ed1902dc618650a32"
  _type = "object_msgs/ObjectInBox"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This message can represent a detected object and its region of interest
Object object                     # detected object
sensor_msgs/RegionOfInterest roi  # region of interest

================================================================================
MSG: object_msgs/Object
# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This message define the property of detected object
string object_name  # object name
float32 probability # probability of detected object

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the "raw"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
"""
  __slots__ = ['object','roi']
  _slot_types = ['object_msgs/Object','sensor_msgs/RegionOfInterest']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       object,roi

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ObjectInBox, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.object is None:
        self.object = object_msgs.msg.Object()
      if self.roi is None:
        self.roi = sensor_msgs.msg.RegionOfInterest()
    else:
      self.object = object_msgs.msg.Object()
      self.roi = sensor_msgs.msg.RegionOfInterest()

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
      _x = self.object.object_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f4IB().pack(_x.object.probability, _x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.object is None:
        self.object = object_msgs.msg.Object()
      if self.roi is None:
        self.roi = sensor_msgs.msg.RegionOfInterest()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.object_name = str[start:end].decode('utf-8')
      else:
        self.object.object_name = str[start:end]
      _x = self
      start = end
      end += 21
      (_x.object.probability, _x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify,) = _get_struct_f4IB().unpack(str[start:end])
      self.roi.do_rectify = bool(self.roi.do_rectify)
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
      _x = self.object.object_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f4IB().pack(_x.object.probability, _x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.object is None:
        self.object = object_msgs.msg.Object()
      if self.roi is None:
        self.roi = sensor_msgs.msg.RegionOfInterest()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.object_name = str[start:end].decode('utf-8')
      else:
        self.object.object_name = str[start:end]
      _x = self
      start = end
      end += 21
      (_x.object.probability, _x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify,) = _get_struct_f4IB().unpack(str[start:end])
      self.roi.do_rectify = bool(self.roi.do_rectify)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f4IB = None
def _get_struct_f4IB():
    global _struct_f4IB
    if _struct_f4IB is None:
        _struct_f4IB = struct.Struct("<f4IB")
    return _struct_f4IB
