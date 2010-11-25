module EntriesHelper
  def description_for(entry)
    (link_to h(entry.consumer.name), countries_path(entry.consumer)) + " is " + action_for(entry.food.consumption_type) + " " + (link_to h(entry.food.name), food_path(entry.food)) + " from " + (link_to h(entry.producer.name), countries_path(entry.producer))
  end

  def description_without_links_for(entry)
    h(entry.consumer.name) + " is " + action_for(entry.food.consumption_type) + " " + h(entry.food.name) + " from " + h(entry.producer.name)
  end

  def action_for(consumption_type)
    consumption_type == 'food' ? 'eating' : 'drinking'
  end

  def past_tense_action_for(consumption_type)
    consumption_type == 'food' ? 'eaten' : 'drunk'
  end
end
