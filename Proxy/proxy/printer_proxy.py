from .printable import Printable
from .printer import Printer

class PrinterProxy(Printable):
  def __init__(self, name):
    self.name = name
    self.real = Printer(name)

  def getPrinterName(self):
    return print(self.name)

  def setPrinterName(self, name: str):
    if (self.real):
      self.real.setPrinterName(name)  
    self.name = name
    return None

  def print(self, string: str):
    self.realize()
    self.real.print(string)

  def realize(self):
    if not self.real:
      self.real = Printer(self.name)
    return None
  

  