# Run with Python 3.5.2
import urllib.request as req

save_path = "C:\downloadedfrompython\{0}.xlsx"

save_ext = ".xlsx"
save_file_name_suffix = "00"
source_url = "http://www.censusindia.gov.in/2011census/dchb/DCHB_Town_Release_{0}{1}{2}{3}"

for index in range(28, 35):
    if index < 10:
        download_url = source_url.format("0",index, save_file_name_suffix, save_ext)
    else:
        download_url = source_url.format("", index, save_file_name_suffix, save_ext)

    print(download_url)
    print(save_path.format(index))

    req.urlretrieve(download_url, save_path.format(index))

