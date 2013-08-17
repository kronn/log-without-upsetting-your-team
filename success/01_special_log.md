!SLIDE transition=fade
 
&nbsp;

!SLIDE transition=fade

# specialised logging

!SLIDE bullets incremental left top

# Own Logger
* `log = Logger.new( filename )`
* `log.info "F1rst L0g"`
* `log.info "All your logz are belong to us."`

!SLIDE bullets incremental top
.notes With the notification API that has been introduced with Rails 3, one can listen the the right events and write stuff to a file.

# Instrumentation API
* exists since Rails3
* subscribe to events
* react as you want

!SLIDE bullets top
.notes the world is writing about this already

# Links
* [Railscast 249](http://railscasts.com/episodes/249-notifications-in-rails-3)
* [RoR API](http://api.rubyonrails.org/classes/ActiveSupport/Notifications.html)
* [RoR Guide](http://edgeguides.rubyonrails.org/active_support_instrumentation.html)
* [Blogpost with Tips](http://mikenaberezny.com/2007/02/24/rails-logging-tips/)

!SLIDE bullets top incremental

# events
* `start_processing.action_controller`
* `process_action.action_controller`
* `sql.active_record`
* create your own

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
	            join(Rails.env + '.payment.log')
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
	            join(Rails.env + '.payment.log')
	pay_log = PaymentLogger.new(File.open(logfile.to_s, 'a'))
	
	ActiveSupport::Notifications.subscribe(
	  'sql.active_record'
	) do |name, start, finish, id, payload|
	  payment_logger.info payload[:sql]
	end


