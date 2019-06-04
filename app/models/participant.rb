class Participant < ApplicationRecord
  has_many :audios

  attr_accessor :observations
  attr_accessor :attachment

  validates :first_name, presence: { message: 'Los nombres son obligatorios' }
  validates :last_name, presence: { message: 'Los apellidos son obligatorios' }
  validates :email, presence: { message: 'El email es obligatorio' }
  validates :attachment, presence: { message: 'El archivo de audio es obligatorio' }
  validate :is_valid_audio_file
  validate :is_valid_file_size

  def is_valid_audio_file
    if !FileSystemService.is_valid_audio_file(attachment)
      errors.add(:attachment, 'El archivo que escogiste no es un audio, intenta con otro')
    end
  end

  def is_valid_file_size
    if !attachment.nil? && attachment.size > 5.megabytes
      errors.add(:attachment, 'El archivo de audio no debe superar los 5MB')
    end
  end
end
