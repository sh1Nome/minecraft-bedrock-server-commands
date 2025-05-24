import { defineConfig } from "vitepress";

// https://vitepress.dev/reference/site-config
export default defineConfig({
  lang: "ja",
  title: "Minecraft Bedrock Server Commands",
  description: "マイクラ統合版のサーバー管理用のコマンド集です。",
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: "導入方法", link: "/get-started" },
      { text: "コマンド一覧", link: "/commands" },
    ],

    sidebar: [
      {
        items: [
          { text: "導入方法", link: "/get-started" },
          {
            text: "コマンド一覧",
            link: "/commands",
            items: [{ text: "牢屋", link: "/commands#牢屋" }],
          },
        ],
      },
    ],

    socialLinks: [
      {
        icon: "github",
        link: "https://github.com/sh1Nome/minecraft-bedrock-server-commands",
      },
    ],

    search: {
      provider: "local",
    },
  },
});
