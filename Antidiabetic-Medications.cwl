cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  antidiabetic-medications-rosiglitazone---primary:
    run: antidiabetic-medications-rosiglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  antidiabetic-medications-glimepiride---primary:
    run: antidiabetic-medications-glimepiride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-rosiglitazone---primary/output
  antidiabetic-medications-100mg---primary:
    run: antidiabetic-medications-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-glimepiride---primary/output
  antidiabetic-medications-625mg---primary:
    run: antidiabetic-medications-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-100mg---primary/output
  antidiabetic-medications-solution---primary:
    run: antidiabetic-medications-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-625mg---primary/output
  antidiabetic-medications-glucamet---primary:
    run: antidiabetic-medications-glucamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-solution---primary/output
  antidiabetic-medications-sachet---primary:
    run: antidiabetic-medications-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-glucamet---primary/output
  antidiabetic-medications-180mg---primary:
    run: antidiabetic-medications-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-sachet---primary/output
  antidiabetic-medications-bydureon---primary:
    run: antidiabetic-medications-bydureon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-180mg---primary/output
  antidiabetic-medications-modifiedrelease---primary:
    run: antidiabetic-medications-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-bydureon---primary/output
  antidiabetic-medications-amaryl---primary:
    run: antidiabetic-medications-amaryl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-modifiedrelease---primary/output
  antidiabetic-medications-tablet---primary:
    run: antidiabetic-medications-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-amaryl---primary/output
  antidiabetic-medications-850mg---primary:
    run: antidiabetic-medications-850mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-tablet---primary/output
  antidiabetic-medications-invokana---primary:
    run: antidiabetic-medications-invokana---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-850mg---primary/output
  antidiabetic-medications-metabet---primary:
    run: antidiabetic-medications-metabet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-invokana---primary/output
  antidiabetic-medications-125mg---primary:
    run: antidiabetic-medications-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-metabet---primary/output
  antidiabetic-medications-januvia---primary:
    run: antidiabetic-medications-januvia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-125mg---primary/output
  antidiabetic-medications-prandin---primary:
    run: antidiabetic-medications-prandin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-januvia---primary/output
  antidiabetic-medications-750mg---primary:
    run: antidiabetic-medications-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-prandin---primary/output
  antidiabetic-medications-500mg---primary:
    run: antidiabetic-medications-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-750mg---primary/output
  antidiabetic-medications-repaglinide---primary:
    run: antidiabetic-medications-repaglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-500mg---primary/output
  antidiabetic-medications-20microgram---primary:
    run: antidiabetic-medications-20microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-repaglinide---primary/output
  antidiabetic-medications-suspension---primary:
    run: antidiabetic-medications-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-20microgram---primary/output
  antidiabetic-medications-vipidia---primary:
    run: antidiabetic-medications-vipidia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-suspension---primary/output
  antidiabetic-medications-sugar---primary:
    run: antidiabetic-medications-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-vipidia---primary/output
  antidiabetic-medications-120mg---primary:
    run: antidiabetic-medications-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-sugar---primary/output
  antidiabetic-medications-avandia---primary:
    run: antidiabetic-medications-avandia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-120mg---primary/output
  antidiabetic-medications-glucophage---primary:
    run: antidiabetic-medications-glucophage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-avandia---primary/output
  antidiabetic-medications-tolbutamide---primary:
    run: antidiabetic-medications-tolbutamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-glucophage---primary/output
  antidiabetic-medications-sukkarto---primary:
    run: antidiabetic-medications-sukkarto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-tolbutamide---primary/output
  antidiabetic-medications-avandamet---primary:
    run: antidiabetic-medications-avandamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-sukkarto---primary/output
  glucient-antidiabetic-medications---primary:
    run: glucient-antidiabetic-medications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-avandamet---primary/output
  antidiabetic-medications-forxiga---primary:
    run: antidiabetic-medications-forxiga---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: glucient-antidiabetic-medications---primary/output
  antidiabetic-medications-pioglitazone---primary:
    run: antidiabetic-medications-pioglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-forxiga---primary/output
  antidiabetic-medications-nazdol---primary:
    run: antidiabetic-medications-nazdol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-pioglitazone---primary/output
  antidiabetic-medications-gliclazide---primary:
    run: antidiabetic-medications-gliclazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-nazdol---primary/output
  antidiabetic-medications-empagliflozin---primary:
    run: antidiabetic-medications-empagliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-gliclazide---primary/output
  antidiabetic-medications-diamicron---primary:
    run: antidiabetic-medications-diamicron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-empagliflozin---primary/output
  antidiabetic-medications-malix---primary:
    run: antidiabetic-medications-malix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-diamicron---primary/output
  antidiabetic-medications-device---primary:
    run: antidiabetic-medications-device---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-malix---primary/output
  antidiabetic-medications-novonorm---primary:
    run: antidiabetic-medications-novonorm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-device---primary/output
  antidiabetic-medications-calabren---primary:
    run: antidiabetic-medications-calabren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-novonorm---primary/output
  antidiabetic-medications-nateglinide---primary:
    run: antidiabetic-medications-nateglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-calabren---primary/output
  antidiabetic-medications-bolamyn---primary:
    run: antidiabetic-medications-bolamyn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-nateglinide---primary/output
  antidiabetic-medications-alogliptin---primary:
    run: antidiabetic-medications-alogliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-bolamyn---primary/output
  antidiabetic-medications-orabet---primary:
    run: antidiabetic-medications-orabet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-alogliptin---primary/output
  antidiabetic-medications-euglucon---primary:
    run: antidiabetic-medications-euglucon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-orabet---primary/output
  antidiabetic-medications-jentadueto---primary:
    run: antidiabetic-medications-jentadueto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-euglucon---primary/output
  antidiabetic-medications-jardiance---primary:
    run: antidiabetic-medications-jardiance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-jentadueto---primary/output
  antidiabetic-medications-starlix---primary:
    run: antidiabetic-medications-starlix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-jardiance---primary/output
  antidiabetic-medications-metformin---primary:
    run: antidiabetic-medications-metformin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-starlix---primary/output
  antidiabetic-medications-sitagliptin---primary:
    run: antidiabetic-medications-sitagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-metformin---primary/output
  antidiabetic-medications-500microgram---primary:
    run: antidiabetic-medications-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-sitagliptin---primary/output
  antidiabetic-medications-canagliflozin---primary:
    run: antidiabetic-medications-canagliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-500microgram---primary/output
  antidiabetic-medications-exenatide---primary:
    run: antidiabetic-medications-exenatide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-canagliflozin---primary/output
  antidiabetic-medications-onglyza---primary:
    run: antidiabetic-medications-onglyza---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-exenatide---primary/output
  antidiabetic-medications-glibenclamide---primary:
    run: antidiabetic-medications-glibenclamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-onglyza---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: antidiabetic-medications-glibenclamide---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
