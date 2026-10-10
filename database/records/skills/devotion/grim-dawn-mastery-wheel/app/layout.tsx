import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Grim Dawn Mastery Fatewheel",
  description: "Randomly draw two distinct Grim Dawn masteries for your next build.",
  icons: { icon: "/favicon.svg", shortcut: "/favicon.svg" },
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return <html lang="en"><body>{children}</body></html>;
}
