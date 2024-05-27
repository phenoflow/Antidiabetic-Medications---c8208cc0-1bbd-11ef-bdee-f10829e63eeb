# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"54764","system":"gprdproduct"},{"code":"17343","system":"gprdproduct"},{"code":"21892","system":"gprdproduct"},{"code":"5989","system":"gprdproduct"},{"code":"63048","system":"gprdproduct"},{"code":"21564","system":"gprdproduct"},{"code":"34399","system":"gprdproduct"},{"code":"31212","system":"gprdproduct"},{"code":"47074","system":"gprdproduct"},{"code":"56008","system":"gprdproduct"},{"code":"45215","system":"gprdproduct"},{"code":"32","system":"gprdproduct"},{"code":"60495","system":"gprdproduct"},{"code":"42790","system":"gprdproduct"},{"code":"29939","system":"gprdproduct"},{"code":"33562","system":"gprdproduct"},{"code":"34932","system":"gprdproduct"},{"code":"36856","system":"gprdproduct"},{"code":"27125","system":"gprdproduct"},{"code":"51955","system":"gprdproduct"},{"code":"48056","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidiabetic-medications-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidiabetic-medications-180mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidiabetic-medications-180mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidiabetic-medications-180mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
