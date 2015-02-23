module SimpleCrud

  def class_name(instance)
    instance.class.name.underscore.humanize
  end

  def create_(instance, path, r) # Save the instance, Redirect_to if save successful, #render template if not successful
    if instance.create
      redirect_to path, notice: class_name(instance) + " created."
    else
      render r
    end
  end

  def update_(instance, strong_params, path) # Update the instance, Redirect_to if successful, # Always renders edit
    if instance.update(strong_params)
      redirect_to path, notice: class_name(instance) + " updated."
    else
      render :edit
    end
  end

  def destroy_(instance, path) # Delete instance, Redirect_to after delete
    instance.destroy
    redirect_to path, notice: class_name(instance) + " deleted."
  end

end
