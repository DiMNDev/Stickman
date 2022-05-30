jsonFilePath = file_text_open_read(working_directory + "helloHeightsJson.txt");
jsonContents = file_text_read_string(jsonFilePath);
file_text_close(jsonFilePath);
global.jsonStruct = json_parse(jsonContents);
