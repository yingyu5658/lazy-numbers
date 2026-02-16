# Lazy Numbers

Enter Numbers without moving your hands off the home row.

![Example](./screenshots/example.gif)

## Install

### Manual installation

```elisp
(add-to-list 'load-path "/path/to/lazy-numbers/")
(require 'lazy-numbers)

(global-set-key (kbd "C-'") #'lazy-numbers-enter)
```

### Usage

Press `C-'` to enter **home-row number input mode**, then use

```
a s d f g h j k l ;
1 2 3 4 5 6 7 8 9 0
```

Press `ESC` to exit.


## About

When I talk about this idea, my friends often say:

![](./screenshots/opinion.png)
