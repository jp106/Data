from urllib import urlretrieve
# from urllib2 import urlopen

save_path = "C:\Users\jhansip\Downloads\downloadedfrompython\{0}.xlsx"

save_ext = ".xlsx"
save_file_name_suffix = "00"
source_url = "http://www.censusindia.gov.in/2011census/dchb/DCHB_Town_Release_{0}{1}{2}{3}"

for index in range(28, 35):
    if index < 10:
        download_url = source_url.format("0",index, save_file_name_suffix, save_ext)
    else:
        download_url = source_url.format("", index, save_file_name_suffix, save_ext)

    print(download_url)
    print (save_path.format(index))

    urlretrieve(download_url, save_path.format(index))

