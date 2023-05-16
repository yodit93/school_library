class Nameable
  def correct_name
    raise NotImplementedError, 'subclass must override this method'
  end
end
