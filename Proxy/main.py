from proxy.printer_proxy import PrinterProxy

p = PrinterProxy("Alice")

print("current name of printer is {}".format(p.getPrinterName()))

p.setPrinterName("Bob")

print("current name of printer is {}".format(p.getPrinterName()))

p.print("hello World")