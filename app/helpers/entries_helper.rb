module EntriesHelper
  def description_for(entry)
    (link_to h(entry.consumer.name), countries_path(entry.consumer)) + " is eating " + (link_to h(entry.food.name), food_path(entry.food)) + " from " + (link_to h(entry.producer.name), countries_path(entry.producer))
  end

  def description_without_links_for(entry)
    h(entry.consumer.name) + " is eating " + h(entry.food.name) + " from " + h(entry.producer.name)
  end
end
