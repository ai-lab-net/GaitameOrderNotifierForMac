class MainWindow < NSWindowController
  extend IB

  def appdelegate(app)
    @appdelegate = app
  end

  def pushButton(sender)
    NSUserNotificationCenter.defaultUserNotificationCenter.setDelegate(@appdelegate)
    showNotification(1)
    puts "push"
    # alert = NSAlert.new
    # alert.messageText = "Hello Button"
    # alert.runModal
  end

  def showNotification(new_commits)
    return unless new_commits > 0
    notification = NSUserNotification.alloc.init
    notification.title = "New commits"
    notification.informativeText = "There are #{new_commits} new commits."
    notification.soundName = NSUserNotificationDefaultSoundName
    NSUserNotificationCenter.defaultUserNotificationCenter.deliverNotification(notification)
  end


end
