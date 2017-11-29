import os


def list_feature_files(root):
    feature_files = []
    for root, dirs, files in os.walk(root):
        for f in files:
            if f.endswith('.feature'):
                feature_files.append(os.path.join(root, f))
    return feature_files


def list_to_file(source_list, file_name):
    with open(file_name, 'w+') as f:
        for i in source_list:
            f.write(''.join([i, '\n']))
