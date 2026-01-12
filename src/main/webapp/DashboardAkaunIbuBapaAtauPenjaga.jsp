<%-- 
    Document   : DashboardAkaunIbuBapaAtauPenjaga.jsp
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="light" lang="ms"><head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <title>i-KEMAS</title>
        <link rel="icon" href="image/Sistem.png">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com" rel="preconnect"/>
        <link crossorigin="" href="https://fonts.gstatic.com" rel="preconnect"/>
        <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100..900;1,100..900&amp;family=Noto+Sans:ital,wght@0,100..900;1,100..900&amp;display=swap" rel="stylesheet"/>

        <!-- Material Symbols -->
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>

        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>

        <!-- Theme Configuration -->
        <script id="tailwind-config">
            tailwind.config = {
                darkMode: "class",
                theme: {
                    extend: {
                        colors: {
                            "primary": "#135bec", // KEMAS Blue-ish tone for primary actions
                            "primary-dark": "#0e45b5",
                            "secondary": "#ef4444", // Red accent from KEMAS logo
                            "accent": "#eab308", // Yellow accent from KEMAS logo
                            "background-light": "#f3f4f6", // Light grey background
                            "background-dark": "#101622",
                            "card-light": "#ffffff",
                            "card-dark": "#1a2233",
                            "text-main": "#0d121b",
                            "text-muted": "#4c669a",
                            "border-color": "#e5e7eb",
                        },
                        fontFamily: {
                            display: ["Public Sans", "Noto Sans", "sans-serif"],
                            body: ["Public Sans", "Noto Sans", "sans-serif"],
                        },
                        borderRadius: {"DEFAULT": "0.5rem", "lg": "0.75rem", "xl": "1rem", "full": "9999px"},

                    },
                },
            }
        </script>
    </head>
    <body class="bg-background-light dark:bg-background-dark text-slate-900 dark:text-white h-screen overflow-hidden flex">
        <!-- Sidebar -->
        <aside class="w-64 bg-card-light dark:bg-card-dark border-r border-border-color hidden lg:flex flex-col flex-shrink-0 z-20">
            <div class="p-6 flex items-center gap-3">

                <div class="size-8 bg-center bg-contain bg-no-repeat" data-alt="Logo Sistem" style="background-image: url('image/Sistem.png');"></div>

                <div>
                    <h1 class="text-slate-900 dark:text-white text-lg font-bold leading-none">i-KEMAS</h1>
                    <p class="text-slate-500 dark:text-slate-400 text-xs font-medium mt-1">Portal Ibu Bapa atau Penjaga</p>
                </div>
            </div>
            <nav class="flex-1 px-4 flex flex-col gap-2 overflow-y-auto">
                <a class="flex items-center gap-3 px-3 py-2.5 rounded-lg bg-primary text-white group" href="#">
                    <span class="material-symbols-outlined filled">dashboard</span>
                    <span class="text-sm font-medium">Papan Pemuka</span>
                </a>
                <a class="flex items-center gap-3 px-3 py-2.5 rounded-lg text-text-muted hover:bg-background-light dark:hover:bg-background-dark/50 hover:text-primary transition-colors group" href="#">
                    <span class="material-symbols-outlined">app_registration</span>
                    <span class="text-sm font-medium">Permohonan</span>
                </a>
                <a class="flex items-center gap-3 px-3 py-2.5 rounded-lg text-text-muted hover:bg-background-light dark:hover:bg-background-dark/50 hover:text-primary transition-colors group" href="#">
                    <span class="material-symbols-outlined">analytics</span>
                    <span class="text-sm font-medium">Prestasi Murid</span>
                </a>
                <a class="flex items-center gap-3 px-3 py-2.5 rounded-lg text-text-muted hover:bg-background-light dark:hover:bg-background-dark/50 hover:text-primary transition-colors group" href="#">
                    <span class="material-symbols-outlined">settings</span>
                    <span class="text-sm font-medium">Tetapan</span>
                </a>
            </nav>
            <div class="p-4 border-slate-200 dark:border-slate-800">
                <button class="flex w-full items-center gap-2 justify-center rounded-lg h-10 px-4
                        bg-primary text-white
                        hover:bg-primary-dark
                        text-sm font-bold transition-colors">
                    <span class="material-symbols-outlined text-[20px]">logout</span>
                    <span>Keluar</span>
                </button>
            </div>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 flex flex-col min-w-0 overflow-hidden bg-background-light dark:bg-background-dark">
            <!-- Header -->
            <header class="bg-card-light dark:bg-card-dark border-b border-border-color h-16 flex items-center justify-between px-6 lg:px-8">
                <div class="flex items-center gap-4">
                    <button class="lg:hidden text-text-muted hover:text-primary">
                        <span class="material-symbols-outlined">menu</span>
                    </button>
                    <h2 class="text-text-main text-lg font-bold">Papan Pemuka</h2>
                </div>
                <div class="flex items-center gap-6">

                    <!-- Actions -->
                    <div class="flex items-center gap-3">
                        <button class="relative text-text-muted">
                            <span class="material-symbols-outlined">notifications</span>
                        </button>
                        <div class="flex items-center gap-3 pl-3 border-l border-border-color">
                            <div class="text-right hidden md:block">
                                <p class="text-sm font-bold text-text-main">Aisyah</p>
                                <p class="text-xs text-text-muted">Ibu Bapa atau Penjaga</p>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <!-- Scrollable Dashboard Content -->
            <div class="flex-1 overflow-y-auto p-8">
                <div class="max-w-6xl mx-auto flex flex-col gap-8">
                    <!-- Welcome Section -->
                    <div>
                        <h2 class="text-3xl md:text-4xl font-black text-gray-900 dark:text-white tracking-tight mb-2">Selamat Datang, Puan Aisyah</h2>
                        <p class="text-text-muted text-sm font-medium">Berikut adalah ringkasan aktiviti anak-anak anda di Tadika KEMAS untuk Sesi 2026.</p>
                    </div>

                    <!-- Stats Overview -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <!-- Card 1 -->
                        <div class="bg-card-light dark:bg-card-dark p-6 rounded-xl border border-border-color shadow-sm flex flex-col gap-1 relative overflow-hidden group">
                            <div class="absolute -right-4 -top-4 bg-emerald-50 dark:bg-emerald-900/20 size-24 rounded-full flex items-center justify-center group-hover:scale-110 transition-transform">
                                <span class="material-symbols-outlined text-emerald-600 text-4xl opacity-20">face</span>
                            </div>
                            <p class="text-text-muted text-sm font-medium relative z-10">Anak Berdaftar</p>
                            <div class="flex items-baseline gap-2 relative z-10">
                                <h4 class="text-3xl font-bold text-text-main">2</h4>
                            </div>
                            <p class="text-xs text-text-muted mt-2 relative z-10">Aktif Sesi 2026</p>
                        </div>

                        <!-- Card 2 -->
                        <div class="bg-card-light dark:bg-card-dark p-6 rounded-xl border border-border-color shadow-sm flex flex-col gap-1 relative overflow-hidden group">
                            <div class="absolute -right-4 -top-4 bg-emerald-50 dark:bg-emerald-900/20 size-24 rounded-full flex items-center justify-center group-hover:scale-110 transition-transform">
                                <span class="material-symbols-outlined text-emerald-600 text-4xl opacity-20">assignment_ind</span>
                            </div>
                            <p class="text-text-muted text-sm font-medium relative z-10">Permohonan Baru</p>
                            <div class="flex items-baseline gap-2 relative z-10">
                                <h4 class="text-3xl font-bold text-text-main">1</h4>
                            </div>
                            <p class="text-xs text-text-muted mt-2 relative z-10">Dalam Proses Semakan</p>
                        </div>

                        <!-- Left Column: Main Content -->
                        <div class="lg:col-span-2 flex flex-col gap-8">
                            <!-- Status Permohonan Widget -->
                            <div class="bg-white dark:bg-[#1a202c] rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm overflow-hidden">
                                <div class="px-6 py-4 border-b border-slate-100 dark:border-slate-800 flex justify-between items-center bg-slate-50/50 dark:bg-slate-800/50">
                                    <h3 class="font-bold text-slate-900 dark:text-white">Status Permohonan Terkini</h3>
                                    <span class="px-2.5 py-1 rounded-full bg-blue-100 text-blue-700 text-xs font-bold dark:bg-blue-900/40 dark:text-blue-300">Sesi 2027</span>
                                </div>
                                <div class="p-6">
                                    <div class="flex items-start gap-4 mb-6">
                                        <div class="size-12 rounded-full bg-slate-100 dark:bg-slate-700 flex items-center justify-center text-slate-400">
                                            <span class="material-symbols-outlined">child_care</span>
                                        </div>
                                        <div>
                                            <h4 class="font-bold text-slate-900 dark:text-white">Azri bin Ali</h4>
                                            <p class="text-sm text-slate-500">Permohonan ke Tadika Kemas Perumahan Wakaf Tengah</p>
                                        </div>
                                    </div>
                                    <!-- Stepper -->
                                    <div class="relative flex items-center justify-between w-full">
                                        <div class="absolute left-0 top-1/2 -translate-y-1/2 w-full h-1 bg-slate-100 dark:bg-slate-700 z-0"></div>
                                        <!-- Step 1: Completed -->
                                        <div class="relative z-10 flex flex-col items-center gap-2">
                                            <div class="size-8 rounded-full bg-green-500 text-white flex items-center justify-center border-4 border-white dark:border-[#1a202c]">
                                                <span class="material-symbols-outlined text-sm">check</span>
                                            </div>
                                            <p class="text-xs font-medium text-green-600">Dihantar</p>
                                        </div>
                                        <!-- Step 2: Active -->
                                        <div class="relative z-10 flex flex-col items-center gap-2">
                                            <div class="size-8 rounded-full bg-primary text-white flex items-center justify-center border-4 border-white dark:border-[#1a202c] ring-2 ring-primary/20">
                                                <span class="material-symbols-outlined text-sm">hourglass_top</span>
                                            </div>
                                            <p class="text-xs font-bold text-primary">Semakan</p>
                                        </div>
                                        <!-- Step 3: Pending -->
                                        <div class="relative z-10 flex flex-col items-center gap-2">
                                            <div class="size-8 rounded-full bg-slate-200 dark:bg-slate-700 text-slate-400 flex items-center justify-center border-4 border-white dark:border-[#1a202c]">
                                                <span class="text-xs font-bold">3</span>
                                            </div>
                                            <p class="text-xs font-medium text-slate-400">Keputusan</p>
                                        </div>
                                    </div>
                                    <div class="mt-6 p-4 bg-primary/5 rounded-lg border border-primary/10">
                                        <p class="text-sm text-primary-dark dark:text-blue-300">
                                            <span class="font-bold">Info:</span> Permohonan sedang disemak oleh pihak pengurusan tadika. Jangkaan keputusan pada <span class="font-bold">1 Disember 2026</span>.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- My Children List -->
                            <div class="flex flex-col gap-4">
                                <div class="flex justify-between items-end">
                                    <h3 class="font-bold text-lg text-slate-900 dark:text-white">Anak Saya</h3>
                                    <a class="text-sm font-semibold text-primary hover:underline" href="#">Lihat Semua</a>
                                </div>
                                <!-- Child Card 1 -->
                                <div class="bg-white dark:bg-[#1a202c] p-4 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col sm:flex-row items-center gap-6 hover:shadow-md transition-shadow">
                                    <div class="size-20 rounded-full bg-slate-200 overflow-hidden shrink-0 border-2 border-white shadow-sm">
                                        <div class="w-full h-full object-cover" 
                                             style="background-image: url('User Icon.jpg');
                                             background-size: cover;
                                             background-position: center;">
                                        </div>
                                    </div>
                                    <div class="flex-1 text-center sm:text-left">
                                        <h4 class="text-lg font-bold text-slate-900 dark:text-white">Ahmad bin Ali</h4>
                                        <p class="text-sm text-slate-500 mb-2">5 Tahun</p>
                                        <div class="flex gap-2 justify-center sm:justify-start flex-wrap">
                                            <span class="px-2 py-1 bg-green-100 text-green-700 rounded text-xs font-bold">Hadir</span>
                                        </div>
                                    </div>
                                    <div class="flex gap-2">

                                        <button class="px-4 py-2 bg-primary text-white rounded-lg text-sm font-bold shadow-sm hover:bg-primary-dark transition-colors">Prestasi</button>
                                    </div>
                                </div>
                                <!-- Child Card 2 -->
                                <div class="bg-white dark:bg-[#1a202c] p-4 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col sm:flex-row items-center gap-6 hover:shadow-md transition-shadow">
                                    <div class="size-20 rounded-full bg-slate-200 overflow-hidden shrink-0 border-2 border-white shadow-sm">
                                        <div class="w-full h-full object-cover" style="background-image: url('User Icon.jpg'); background-size: cover; background-position: center;"></div>
                                    </div>
                                    <div class="flex-1 text-center sm:text-left">
                                        <h4 class="text-lg font-bold text-slate-900 dark:text-white">Aminah binti Ali</h4>
                                        <p class="text-sm text-slate-500 mb-2">5 Tahun</p>
                                        <div class="flex gap-2 justify-center sm:justify-start flex-wrap">
                                            <span class="px-2 py-1 bg-yellow-100 text-yellow-700 rounded text-xs font-bold">Tidak Hadir</span>
                                        </div>
                                    </div>
                                    <div class="flex gap-2">
                                        <button class="px-4 py-2 bg-primary text-white rounded-lg text-sm font-bold shadow-sm hover:bg-primary-dark transition-colors">Prestasi</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer class="max-w-md mx-auto py-6  border-slate-200 dark:border-slate-800">
                <p class="text-center text-xs text-slate-400">
                    &copy; 2026 Jabatan Kemajuan Masyarakat (KEMAS)
                </p>
            </footer> 
        </main>
    </body>
</html>
