import unittest
from reference_model import mac, relu, signed_wrap
class ReferenceModelTests(unittest.TestCase):
 def test_signed_products(self):
  self.assertEqual(mac(7,9,2),65); self.assertEqual(mac(-7,9,2),-61); self.assertEqual(mac(-128,-128,0),16384)
 def test_relu(self): self.assertEqual(relu(-1),0); self.assertEqual(relu(7),7)
 def test_wrap(self): self.assertEqual(signed_wrap(128,8),-128)
 def test_saturation(self):
  self.assertEqual(mac(127,127,0,8,8,8,True),127); self.assertEqual(mac(-128,127,0,8,8,8,True),-128)
 def test_range_validation(self):
  with self.assertRaises(ValueError): mac(128,1,0)
if __name__ == "__main__": unittest.main()
