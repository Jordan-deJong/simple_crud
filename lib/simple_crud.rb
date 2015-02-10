module SimpleCrud

  def class_name(instance)
    instance.class.name.underscore.humanize
  end

  def create_(instance, path, r)
    if instance.save
      redirect_to path, notice: class_name(instance) + " created."
    else
      render r
    end
  end

  def update_(instance, strong_params, path)
    if instance.update(strong_params)
      redirect_to path, notice: class_name(instance) + " updated."
    else
      render :edit
    end
  end

  def destroy_(instance, path)
    instance.destroy
    redirect_to path, notice: class_name(instance) + " deleted."
  end

end
