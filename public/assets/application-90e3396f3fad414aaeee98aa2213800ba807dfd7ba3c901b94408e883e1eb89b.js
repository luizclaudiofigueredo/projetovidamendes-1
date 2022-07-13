// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import { Modal } from "tailwindcss-stimulus-components"
import "controllers"
application.register('modalForm', Modal);
