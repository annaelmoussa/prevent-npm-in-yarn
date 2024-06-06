# prevent-npm-in-yarn

## Description

`prevent-npm-in-yarn` is a Zsh plugin that prevents the use of `npm` commands in projects that use Yarn by displaying a warning and asking for confirmation before proceeding. This helps maintain consistency and avoid potential issues caused by mixing package managers.

## Installation

### Using zplug

1. Add the plugin to your `.zshrc`:

```sh
zplug "annaelmoussa/prevent-npm-in-yarn"
```

2. Reload your Zsh configuration and install the plugin:

```sh
source ~/.zshrc
zplug install
```

### Using antigen

1. Add the plugin to your `.zshrc`:

```sh
antigen bundle "annaelmoussa/prevent-npm-in-yarn"
```

2. Reload your Zsh configuration:

```sh
source ~/.zshrc
```

### Using oh-my-zsh

1. Clone the repository to your custom plugins directory:

```sh
git clone https://github.com/annaelmoussa/prevent-npm-in-yarn.git $ZSH_CUSTOM/plugins/prevent-npm-in-yarn
```

2. Add `prevent-npm-in-yarn` to your plugins list in `.zshrc`:

```sh
plugins=(... prevent-npm-in-yarn)
```

3. Reload your Zsh configuration:

```sh
source ~/.zshrc
```

## Usage

Once installed, the plugin will automatically intercept `npm` commands in projects that use Yarn (i.e., projects with a `yarn.lock` file) and display a warning. You will be asked to confirm if you want to proceed with the `npm` command.

```sh
$ npm install
⚠️  Warning: This project uses Yarn. Using 'npm' is not recommended.
Do you still want to proceed with 'npm' command? (y/N) n
Operation canceled.
```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request on GitHub.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
