# Installing Oracle JDK 7 for building TWRP

## Disclaimer

This method is a bit controversial and is probably not the best approach, but it works.

## Requirements

- The latest version of `wget`
- The latest version of `nano`
- Any terminal that has a `.{terminal name}rc` configuration

## Setting Up

### Getting Oracle JDK 7

I use Huawei's cloud repositories to get the JDK versions instead of downloading them from Oracle's site to bypass logins.

```bash
mkdir ~/.jdk_7
cd ~/.jdk_7
wget https://repo.huaweicloud.com/java/jdk/7u80-b15/jdk-7u80-linux-i586.tar.gz
tar –xzf jdk-7u80-linux-i586.tar.gz
```

### Installing Oracle JDK 7

**1.** Run `nano .$(basename $SHELL)rc` to open your current shell configuration in `nano`.

**2.** Go to the end of the file and append these lines:

```bash
# JDK 7
export PATH="$HOME/.jdk_7/jdk1.7.0_80/bin:$PATH"
export JAVA_HOME="$HOME/.jdk_7/jdk1.7.0_80"
```

**3.** Re-open your shell.
