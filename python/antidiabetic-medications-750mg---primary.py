# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"38551","system":"gprdproduct"},{"code":"43619","system":"gprdproduct"},{"code":"50087","system":"gprdproduct"},{"code":"39203","system":"gprdproduct"},{"code":"63929","system":"gprdproduct"},{"code":"48401","system":"gprdproduct"},{"code":"38400","system":"gprdproduct"},{"code":"37874","system":"gprdproduct"},{"code":"38355","system":"gprdproduct"},{"code":"11946","system":"gprdproduct"},{"code":"37902","system":"gprdproduct"},{"code":"39149","system":"gprdproduct"},{"code":"43684","system":"gprdproduct"},{"code":"64743","system":"gprdproduct"},{"code":"37875","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidiabetic-medications-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidiabetic-medications-750mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidiabetic-medications-750mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidiabetic-medications-750mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
