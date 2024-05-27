# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"39598","system":"gprdproduct"},{"code":"51135","system":"gprdproduct"},{"code":"62144","system":"gprdproduct"},{"code":"5627","system":"gprdproduct"},{"code":"56437","system":"gprdproduct"},{"code":"63131","system":"gprdproduct"},{"code":"60968","system":"gprdproduct"},{"code":"53288","system":"gprdproduct"},{"code":"60074","system":"gprdproduct"},{"code":"62265","system":"gprdproduct"},{"code":"49738","system":"gprdproduct"},{"code":"7048","system":"gprdproduct"},{"code":"62824","system":"gprdproduct"},{"code":"57830","system":"gprdproduct"},{"code":"53478","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidiabetic-medications-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidiabetic-medications-modifiedrelease---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidiabetic-medications-modifiedrelease---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidiabetic-medications-modifiedrelease---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
