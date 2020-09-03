ltnh_events = {
  map_gui_opened   = {},
  map_gui_closed   = {},
  map_checked      = {},
  map_text_changed = {},
  map_elem_changed = {},
  map_clicked      = {},
  map_slider       = {},
}

ltnh_events.on_gui_opened = function(event)
  if not event.entity or not ltnh_events.map_gui_opened[event.entity.name] then return end
  ltnh_events.map_gui_opened[event.entity.name](event)
end

ltnh_events.on_gui_closed = function(event)
  if not event.element or not ltnh_events.map_gui_closed[event.element.name] then return end
  ltnh_events.map_gui_closed[event.element.name](event)
end

ltnh_events.on_gui_clicked = function(event) 
  if not event.element or not ltnh_events.map_clicked[event.element.name] then return end
  ltnh_events.map_clicked[event.element.name](event)
end

ltnh_events.on_gui_text_changed = function(event) 
  if not event.element or not ltnh_events.map_text_changed[event.element.name] then return end
  ltnh_events.map_text_changed[event.element.name](event)
end

ltnh_events.on_gui_checked_state = function(event) 
  if not event.element or not ltnh_events.map_checked[event.element.name] then return end
  ltnh_events.map_checked[event.element.name](event)
end

ltnh_events.on_gui_elem_changed = function(event) 
  if not event.element or not ltnh_events.map_elem_changed[event.element.name] then return end
  ltnh_events.map_elem_changed[event.element.name](event)
end

ltnh_events.on_gui_slider_changed = function(event) 
  if not event.element or not ltnh_events.map_slider[event.element.name] then return end
  ltnh_events.map_slider[event.element.name](event)
end

script.on_event({defines.events.on_gui_opened}, ltnh_events.on_gui_opened)
script.on_event({defines.events.on_gui_closed}, ltnh_events.on_gui_closed)
script.on_event({defines.events.on_gui_click}, ltnh_events.on_gui_clicked)
script.on_event({defines.events.on_gui_text_changed}, ltnh_events.on_gui_text_changed)
script.on_event({defines.events.on_gui_checked_state_changed}, ltnh_events.on_gui_checked_state)
script.on_event({defines.events.on_gui_elem_changed}, ltnh_events.on_gui_elem_changed)
script.on_event({defines.events.on_gui_value_changed}, ltnh_events.on_gui_slider_changed)
--script.on_event("ltnh-tab-key-event", ltnh.gui.on_tab_key)

return ltnh_events