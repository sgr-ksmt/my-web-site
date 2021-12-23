# sgr-ksmt's website

- https://sgr-ksmt.dev
- Built with Flutter
- running on Firebase Hosting

## Development

```bash
$ git clone ...
$ cd path/to/repository
$ fvm install
$ fvm flutter pub get
$ fvm flutter -d chrome --web-renderer=html
```

## Deployment

```bash
$ cd path/to/repository
$ fvm flutter build web --web-renderer=html
$ yarn deploy --only hosting
```
