# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"16211","system":"gprdproduct"},{"code":"45581","system":"gprdproduct"},{"code":"16213","system":"gprdproduct"},{"code":"46989","system":"gprdproduct"},{"code":"51080","system":"gprdproduct"},{"code":"53774","system":"gprdproduct"},{"code":"2928","system":"gprdproduct"},{"code":"9108","system":"gprdproduct"},{"code":"22636","system":"gprdproduct"},{"code":"7815","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidiabetic-medications-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidiabetic-medications-metabet---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidiabetic-medications-metabet---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidiabetic-medications-metabet---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
