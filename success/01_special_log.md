!SLIDE transition=fade
 
&nbsp;

!SLIDE transition=fade

# specialised logging

!SLIDE bullets incremental
.notes If you need better logging, then please log the things you need in a separate logfile.

# Logging
* is not bad per se
* is always unique
* goes in a separate file

!SLIDE bullets incremental left

# Own Logger
* `log = Logger.new( filename )`
* `log.info "F1rst L0g"`
* `log.info "All your logz are belong to us."`

!SLIDE bullets incremental
.notes With the notification API that has been introduced with Rails 3, one can listen the the right events and write stuff to a file.

# Notification API
* exists since Rails3
* subscribe to events
* react as you want

!SLIDE bullets
.notes the world is writing about this already

# Links
* [Railscast 249](http://railscasts.com/episodes/249-notifications-in-rails-3)
* [RoR API](http://api.rubyonrails.org/classes/ActiveSupport/Notifications.html)
* [RoR Guide](http://edgeguides.rubyonrails.org/active_support_instrumentation.html#sql-active-record)
* [Blogpost with Tips](http://mikenaberezny.com/2007/02/24/rails-logging-tips/)

!SLIDE top small
.notes Code example, to be put in an initializer:

	@@@ ruby
	class PaymentLogger < Logger
	  def format_message(severity, timestamp, progname, msg)
	    "#{timestamp.to_formatted_s(:db)} #{severity} #{msg}\n"
	  end
	end

!SLIDE top small
.notes Code example, to be put in an initializer:

	@@@ ruby
	class PaymentLogger < Logger
	  def format_message(severity, timestamp, progname, msg)
	    "#{timestamp.to_formatted_s(:db)} #{severity} #{msg}\n"
	  end
	end
	
	logfile = Rails.root.join('log').
	            join(Rails.env+'.payment.log')
	pay_log = PaymentLogger.new(File.open(logfile.to_s, 'a'))

!SLIDE top small
.notes Code example, to be put in an initializer:

	@@@ ruby
	class PaymentLogger < Logger
	  def format_message(severity, timestamp, progname, msg)
	    "#{timestamp.to_formatted_s(:db)} #{severity} #{msg}\n"
	  end
	end
	
	logfile = Rails.root.join('log').
	            join(Rails.env+'.payment.log')
	pay_log = PaymentLogger.new(File.open(logfile.to_s, 'a'))
	
	ActiveSupport::Notifications.subscribe(
	  'sql.active_record'
	) do |name, start, finish, id, payload|
	  payment_logger.info payload[:sql]
	end
