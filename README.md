# clickfortech
Click for Tech

## 1. Usage
### 1.1 Procedur to setup and build
- Apply theme patches and create sym link for post in theme.
```
cd clickfortech
./setup.sh
```
- Install gems only once need to be done
```
cd themes/affiliates-jekyll-theme
bundle install
```
- To build and run locally
```
bundle exec jekyll serve
```
- Then build and generate site
```
./build.sh
```

### 1.2 To fetch latest theme
```
git remote update
git rebase origin/rashok-1.0.3
```
