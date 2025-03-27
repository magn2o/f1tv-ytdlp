# f1tv-ytdlp

Watch videos locally from f1tv website

Note: a valid F1TV account is required. The app will save your session so the information will only be required again when your session has expried.

```
f1tv-dl <url>

Positionals:
  url  The f1tv url for the video                                       [string]

Options:
      --help                 Show help                                 [boolean]
      --version              Show version number                       [boolean]
  -c, --channel              Choose an alternate channel for a content with
                             multiple video feeds. Use the channel-list option
                             to see a list of channels and specify
                             name/number/tla to select alternate channel.
                                                        [string] [default: null]
  -i, --international-audio  Select a language to include from the INTERNATIONAL
                             feed. This audio will be included in the file as a
                             secondary audio track.
              [string] [choices: "eng", "nld", "deu", "fra", "por", "spa", "fx"]
  -t, --itsoffset            Used to sync secondary audio. Specify the time
                             offset as '(-)hh:mm:ss.SSS'
                                             [string] [default: "-00:00:03.750"]
  -a, --audio-stream         Specify audio stream language to download
                                                       [string] [default: "eng"]
  -s, --video-size           Specify video size to download as WxH or 'best' to
                             select the highest resolution. (e.g. 640x360,
                             1920x1080, best)         [string] [default: "best"]
  -f, --format               Specify mp4 or TS output (default mp4)
                                [string] [choices: "mp4", "ts"] [default: "mp4"]
  -o, --output-directory     Specify a directory for the downloaded file
                                                        [string] [default: null]
  -T, --token                F1TV Entitlement Token     [string] [default: null]
      --channel-list         Provides a list of channels available from url (for
                             videos with multiple cameras)
                                                      [boolean] [default: false]
      --stream-url           Return the tokenized URL for use in another
                             application and do not download the video
                                                      [boolean] [default: false]
  -N, --concurrent-fragments  Number of fragments of a dash/hlsnative video that
                              should be downloaded concurrently
                                                           [number] [default: 1]
  -S, --series-notation       Fallback series notation for file naming in the
                              event TVDB does not find a match (i.e. S2024E01)
                                                                        [string]
  -l, --log-level            Set the log level
          [choices: "trace", "debug", "info", "warn", "error"] [default: "info"]
```
## Use

Username and password can also be read from the environment variables `F1TV_USER` and `F1TV_PASS`.

## Download a video

Log in to your f1tv account, navigate to the video you want to watch, and copy the url from your browser.

`f1tv-ytdlp <url>`

## See a list of different video feeds from a race with multiple feeds

`f1tv-ytdlp <url> --channel-list`

## Download the data channel stream from a race

`f1tv-ytdlp <url> -c DATA`

## Add Dutch audio from the international broadcast feed 

`f1tv-ytdlp <url> -i nld`

