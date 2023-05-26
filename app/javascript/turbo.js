import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false

import Rails from "@rails/ujs"

Rails.start()
