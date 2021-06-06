Logical:        LMMedicationSchedule 
Title:          "Medication Schedule Logical Data Model"
Description:    "A single instance of a scheduled medication administration."
* id 0..* Identifier "A unique business identifier for this scheduled administration"
* administrationSchedule 0..1 Period "The time of the scheduled administration"
    "The time of the scheduled administration - a start time, or a period, if it is a prolonged administration."
* originalPrescription 0..1 Reference "The medication prescription that triggered this scheduled administration"
* medication 1..1 BackboneElement "The medication that is to be administered" "The medication that is to be administered" 
  * coded 0..1 CodeableConcept "The code of the medication" 
  * reference 0..1 Reference "A reference to a Medication resource" 
* administrationInstructions 0..1 BackboneElement "The instructions for administration"
  * patientInstructions 0..1 markdown "The instructions for the patient"
  * preconditions 0..* CodeableConcept "Any precautions or preconditions that should be present"

