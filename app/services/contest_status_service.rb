class ContestStatusService < ActiveRecord::Base

  def self.IN_PROGRESS
    'IN_PROGRESS'
  end

  def self.CONVERTING
    'CONVERTING'
  end

  def self.CONVERTED
    'CONVERTED'
  end

  def self.ERROR
    'ERROR'
  end

  IN_PROGRESS_NAME = 'En progreso'
  CONVERTING_NAME = 'Convirtiendo'
  CONVERTED_NAME = 'Convertida'
  ERROR_NAME = 'Error'

  IN_PROGRESS_DESCRIPTION = 'El audio aún está pendiente de procesar'
  CONVERTING_DESCRIPTION = 'El audio está en proceso de conversión ...'
  CONVERTED_DESCRIPTION = 'Convertida'
  ERROR_DESCRIPTION = 'Se presentó un error procesando el archivo'

  def self.get_status_name(audio_status)
    if audio_status.eql?(IN_PROGRESS())
      return IN_PROGRESS_NAME
    end
    if audio_status.eql?(CONVERTING())
      return CONVERTING_NAME
    end
    if audio_status.eql?(CONVERTED())
      return CONVERTED_NAME
    end
    if audio_status.eql?(ERROR())
      return ERROR_NAME
    end
  end

  def self.get_status_description(audio_status)
    if audio_status.eql?(IN_PROGRESS())
      return IN_PROGRESS_DESCRIPTION
    end
    if audio_status.eql?(CONVERTING())
      return CONVERTING_DESCRIPTION
    end
    if audio_status.eql?(CONVERTED())
      return CONVERTED_DESCRIPTION
    end
    if audio_status.eql?(ERROR())
      return ERROR_DESCRIPTION
    end
  end
end
