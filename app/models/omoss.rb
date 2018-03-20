class Omoss < ApplicationRecord
  validates :title, presence: {message: "- Du må ha en tittel"}, length: { minimum: 4, message: "- Tittlen må være minst fire bokstaver"}
  validates :ingress, presence: {message: "- Du må ha en ingress/seo beskrivelse"}, length: { minimum: 6, message: "- Ingress/seo beskrivelse må være minst 6 bokstaver"}
  validates :body, presence: {message: "- Du må ha en Hovedtekst"}, length: { minimum: 6, message: "- Hovedteksten må være minst 6 bokstaver"}
end
