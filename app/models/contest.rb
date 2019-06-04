class Contest < ApplicationRecord
  belongs_to :user
  has_many :audios

  attr_accessor :attachment

  validates :name, presence: { message: "El nombre es obligatorio" }
  validates :attachment, presence: { message: "La imagen es obligatoria" }, on: :create
  validate :is_valid_image_file, on: :create
  validate :is_valid_image_file_nil, on: :update
  validates :date_init, presence: { message: "La fecha de inicio es obligatoria" }
  validates :date_end, presence: { message: "La fecha de finalización es obligatoria" }
  validate :date_init_and_date_end
  validates :prize_amount,
            presence: { message: "El monto del premio es obligatorio" },
            numericality: {
                only_integer: { message: "El monto del premio solo acepta números enteros" },
                :allow_nil => false, message: "El monto del premio es obligatorio"
            }
  validates_numericality_of :prize_amount,
                            greater_than: 0,
                            message: "El monto del premio debe ser mayor a $ 0"
  validates_numericality_of :prize_amount,
                            less_than: 10000000000,
                            message: "El monto del premio debe ser menor a $ 10.000.000.000"
  validates :contest_text, presence: { message: "El texto del concurso es obligatorio" }
  validates :recommendations, presence: { message: "Las recomendaciones son obligatorias" }
  validates :url_id,
            presence: { message: "La URL es obligatoria" },
            uniqueness: { message: "La URL ya está asignada a otro concurso" },
            format: { with: /\A[a-zA-Z0-9\-_]+\z/, message: "La URL solo acepta números, letras, _ y -" }

  # Validates that the date_init must be greater than date_end
  def date_init_and_date_end
    if !date_init.blank? && !date_end.blank? && date_init > date_end
      errors.add(:date_init, "La fecha de finalización debe ser mayor o igual a la fecha de inicio")
    end
  end

  def is_valid_image_file_nil
    if !attachment.nil?
      is_valid_image_file
    end
  end

  def is_valid_image_file
    if !FileSystemService.is_valid_image_file(attachment)
      errors.add(:attachment, 'La imagen es inválida, las extensiones aceptadas son: png, jpeg y jpg')
    end
  end
end
