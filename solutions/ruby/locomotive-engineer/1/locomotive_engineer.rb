class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagon_ids)
    wagon_ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first_two = each_wagons_id.shift(2)
    each_wagons_id.push(*first_two)

    loco_index = each_wagons_id.index(1)
    each_wagons_id.insert(loco_index + 1, *missing_wagons)

    each_wagons_id
  end

  def self.add_missing_stops(routing, **new_stops)
    stops_in_order = new_stops.sort_by { |key, _| key.to_s.split("_").last.to_i }
    routing[:stops] = stops_in_order.map { |_, city| city }
    routing
  end

  def self.extend_route_information(route, more_route_information)
    route.merge(more_route_information)
  end
end
