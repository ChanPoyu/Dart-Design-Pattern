import time
from .printable import Printable

class Printer(Printable):

  def __init__(self, name):
    self.name = name
    self.heavyJob("start printing messege")

  def heavyJob(self, msg: str):
    print(msg)
    for i in range(5):
      try: 
        time.sleep(1)
        print(i + 1)
        print(".")
      except InterruptedError as e:
        print(e)

    return print("print done")
  
  def print(self, string: str):
    print("===== {} =====".format(self.name))
    return print(string)

  def setPrinterName(self, name: str):
    self.name = name

    return print("set printer name to {}".format(name))
  
  def getPrinterName(self):
    return print(self.name)
    