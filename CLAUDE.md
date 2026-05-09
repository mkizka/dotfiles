# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 概要

[chezmoi](https://www.chezmoi.io/) で管理する個人 dotfiles。WSL2 (Ubuntu) と Docker (`ghcr.io/mkizka/dotfiles`) を主な対象環境とする。

## スクリプト

- `./scripts/update.sh` — `$HOME` 側で `brew install` した分を `dot_Brewfile` にダンプし、`chezmoi re-add` で取り込み直す（逆方向の同期用）
- `./scripts/lint.sh` — `.sh` と、`chezmoi execute-template` で展開した `.sh.tmpl` の両方を shellcheck にかける

## 動作確認

変更後は以下の両方が通ることを確認する。

- `./scripts/lint.sh`
- `docker build -t dotfiles .` — セットアップフローが最後まで通ることの確認
