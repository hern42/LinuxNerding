import subprocess

process = subprocess.run(['cmus-remote','-Q'], check=True,
                         stdout=subprocess.PIPE, universal_newlines=True)
message = process.stdout
message = message.split('\n')

if 'playing' in message[0]:
    for line in message:
        if 'duration' in line:
            var = line.split('duration ')
            duration_min = int(var[1]) // 60
            duration_sec = int(var[1]) % 60
            duration_string = str(duration_min) + ':' + \
                    '{:02d}'.format(duration_sec)
        elif 'position' in line:
            var = line.split('position ')
            position_min = int(var[1]) // 60
            position_sec = int(var[1]) % 60
            position_string = str(position_min) + ':' + \
                    '{:02d}'.format(position_sec)
        elif ' artist ' in line:
            var = line.split(' artist ')
            artist =  'artist: ' + var[1] + '\n'
        elif ' album ' in line:
            var = line.split(' album ')
            album =  'album: ' + var[1] + '\n'
        elif ' title ' in line:
            var = line.split(' title ')
            title =  'title: ' + var[1]

    string = artist + album + title + '\n ${template3}(' + position_string + \
    '/' + duration_string + ')'

else:
     string = 'Nothing playing right now...'

print(string)

