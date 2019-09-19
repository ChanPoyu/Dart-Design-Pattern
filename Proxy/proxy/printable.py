from abc import ABCMeta, abstractmethod

class Printable(metaclass=ABCMeta):

  def __init__(self):
    pass

  @abstractmethod
  def setPrinterName(self, name: str):
    pass

  @abstractmethod
  def getPrinterName(self):
    pass

  @abstractmethod
  def print(self,string: str):
    pass

