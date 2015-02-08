class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
  end

  def buildWindow
    # @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
    #   styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
    #   backing: NSBackingStoreBuffered,
    #   defer: false)
    # @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    # @mainWindow.orderFrontRegardless
    @mainWindowController = MainWindow.alloc.initWithWindowNibName 'MainWindow'
    # @mainWindowController.window.makeKeyAndOrderFront self
    puts @mainWindowController.window.class
    @mainWindowController.appdelegate self
  end

  def userNotificationCenter(center, didActivateNotification: notification)
    # @status_item.popUpStatusItemMenu(@status_menu)
    # center.removeDeliveredNotification(notification)
    alert = NSAlert.new
    alert.messageText = "Hello Notification!"
    alert.runModal
  end

  def userNotificationCenter(center, shouldPresentNotification: notification)
    return true
  end
end

