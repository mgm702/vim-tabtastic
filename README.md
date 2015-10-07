
# Tabtastic.vim
---

This plugin was built as a tool to help create multiple tabs in Vim. Often times it can be annoying to create 
many tabs in Vim and this plugin is here to help with that. This plugin is easy to use and effectively 
eliminates the work done by the user. 

## Installation

You can either install Vundle and then place the following line in your .vimrc file.

+ ``` Plugin 'mgm702/vim-tabtastic' ```

Or you can use Pathogen and then simply follow the commands below to install the plugin.

``` 
cd ~/.vim/bundle
git clone https://github.com/mgm702/vim-tabtastic.git
```

If you need help with the plugin you may use ```help tabtastic``` to bring up the Plugin's documentation.

## Mapping

This plugin is extremely simple to use and only has one command in order to make it run.
The command below will start up and execute the Tabtastic plugin.

+ ``` :Tabtastic ```

Once the command above is run, the plugin will begin and a prompt will walk you through the process
of creating multiple tabs. 

This command can also be remapped to use a leader key. The following example remaps the :Tabtastic 
command to <leader>t, which runs the plugin.
        
+ ``` :nmap <leader>t :Tabtastic<CR> ```

## Contributing

If you would like to contribute to this plugin, submit a Pull Request with an excellent commit message. 
Contributions are more then welcome, please however make sure that your commit message is clear and understandable. 

## License

The Tabtastic plugin is licensed under the same license as the Vim text editor itself. Please view ```help license``` 
for more details.

## Like The Plugin?

If you like Tabtastic.vim follow the repository on [Github] and if you are feeling extra nice, follow the author [mgm702](http://mgm702) on [Twitter](https://twitter.com/mgm702) or [Github](https://github.com/mgm702).
