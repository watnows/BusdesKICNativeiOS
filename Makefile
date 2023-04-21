PRODUCT_NAME := BusdesKICNativeiOS
PROJECT_NAME := ${PRODUCT_NAME}.xcodeproj
SCHEME_NAME := ${PRODUCT_NAME}

.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-42s%s\n", $$1 $$3, $$2}'

.PHONY: setup
setup: # Install tools
	$(MAKE) install-mint
	$(MAKE) generate-xcodeproj
	$(MAKE) open

.PHONY: install-mint
install-mint: # Install Mint dependencies
	git clone --branch 0.16.0 https://github.com/yonaskolb/Mint
	cd Mint
	cd ..
	rm -rf Mint
	mint bootstrap --overwrite y
		
.PHONY: generate-xcodeproj
generate-xcodeproj: # Generate Xcode project
	mint run xcodegen

.PHONY: open
open: # Open workspace in Xcode
	open ./${PROJECT_NAME}

.PHONY: clean
clean: # Delete cache
	xcodebuild clean -alltargets
