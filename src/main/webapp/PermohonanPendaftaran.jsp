<%-- 
    Document   : PermohonanPendaftaran.jsp
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
                <a class="flex items-center gap-3 px-3 py-2.5 rounded-lg text-text-muted hover:bg-background-light dark:hover:bg-background-dark/50 hover:text-primary transition-colors group" href="#">
                    <span class="material-symbols-outlined filled">dashboard</span>
                    <span class="text-sm font-medium">Papan Pemuka</span>
                </a>
                <a class="flex items-center gap-3 px-3 py-2.5 rounded-lg bg-primary text-white group" href="#">
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
                    <h2 class="text-text-main text-lg font-bold">Permohonan</h2>
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
                <!-- Page Header -->
                <div class="flex flex-col md:flex-row md:items-end justify-between gap-4 mb-8">
                    <div class="max-w-2xl">
                        <h2 class="text-3xl md:text-4xl font-black text-gray-900 dark:text-white tracking-tight mb-2">Status Permohonan</h2>
                        <p class="text-text-muted text-sm font-medium">Semak status terkini permohonan pendaftaran anak anda untuk sesi persekolahan akan datang.</p>
                    </div>
                    <div class="flex gap-2">
                        <button class="flex items-center gap-2 px-4 py-2 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg text-sm font-medium hover:bg-gray-50 dark:hover:bg-gray-700 text-gray-700 dark:text-gray-200 shadow-sm">
                            <span class="material-symbols-outlined text-[20px]">print</span>
                            Cetak Senarai
                        </button>
                        <button class="flex items-center gap-2 px-4 py-2 bg-primary text-white rounded-lg text-sm font-medium hover:bg-blue-700 shadow-sm shadow-blue-200 dark:shadow-none">
                            <span class="material-symbols-outlined text-[20px]">add</span>
                            Permohonan Baru
                        </button>
                    </div>
                </div>
                <!-- Stats Overview -->
                <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-8">
                    <div class="bg-white dark:bg-[#1a202c] p-6 rounded-xl border border-gray-200 dark:border-gray-800 shadow-sm flex items-center justify-between">
                        <div>
                            <p class="text-sm font-medium text-gray-500 dark:text-gray-400 mb-1">Dalam Semakan</p>
                            <p class="text-3xl font-bold text-gray-900 dark:text-white">1</p>
                        </div>
                        <div class="size-12 rounded-full bg-yellow-50 dark:bg-yellow-900/20 flex items-center justify-center text-yellow-600 dark:text-yellow-400">
                            <span class="material-symbols-outlined">pending_actions</span>
                        </div>
                    </div>
                    <div class="bg-white dark:bg-[#1a202c] p-6 rounded-xl border-l-4 border-l-green-500 border-y border-r border-gray-200 dark:border-gray-800 shadow-sm flex items-center justify-between">
                        <div>
                            <p class="text-sm font-medium text-gray-500 dark:text-gray-400 mb-1">Diluluskan</p>
                            <p class="text-3xl font-bold text-gray-900 dark:text-white">2</p>
                        </div>
                        <div class="size-12 rounded-full bg-green-50 dark:bg-green-900/20 flex items-center justify-center text-green-600 dark:text-green-400">
                            <span class="material-symbols-outlined">check_circle</span>
                        </div>
                    </div>
                    <div class="bg-white dark:bg-[#1a202c] p-6 rounded-xl border border-gray-200 dark:border-gray-800 shadow-sm flex items-center justify-between">
                        <div>
                            <p class="text-sm font-medium text-gray-500 dark:text-gray-400 mb-1">Ditolak</p>
                            <p class="text-3xl font-bold text-gray-900 dark:text-white">0</p>
                        </div>
                        <div class="size-12 rounded-full bg-red-50 dark:bg-red-900/20 flex items-center justify-center text-red-600 dark:text-red-400">
                            <span class="material-symbols-outlined">cancel</span>
                        </div>
                    </div>
                </div>
                <!-- Filters & Search -->
                <div class="bg-white dark:bg-[#1a202c] rounded-t-xl border border-gray-200 dark:border-gray-800 p-5">
                    <div class="flex flex-col md:flex-row gap-4 items-end">
                        <div class="flex-1 w-full">
                            <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1.5">Carian Nama / MyKid</label>
                            <div class="relative">
                                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                    <span class="material-symbols-outlined text-gray-400 text-[20px]">search</span>
                                </div>
                                <input class="block w-full pl-10 pr-3 py-2.5 bg-gray-50 dark:bg-gray-800 border border-gray-300 dark:border-gray-700 rounded-lg text-sm placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-primary/50 focus:border-primary transition-shadow" placeholder="Nama / MyKid" type="text"/>
                            </div>
                        </div>
                        <div class="w-full md:w-48">
                            <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1.5">Tahun</label>
                            <div class="relative">
                                <select class="block w-full pl-3 pr-10 py-2.5 bg-gray-50 dark:bg-gray-800 border border-gray-300 dark:border-gray-700 rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-primary/50 focus:border-primary appearance-none cursor-pointer">
                                    <option>Tahun</option>
                                    <option>2024</option>
                                    <option>2025</option>
                                </select>
                                <div class="absolute inset-y-0 right-0 pr-3 flex items-center pointer-events-none">
                                    <span class="material-symbols-outlined text-gray-400 text-[20px]">expand_more</span>
                                </div>
                            </div>
                        </div>
                        <div class="w-full md:w-48">
                            <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1.5">Status</label>
                            <div class="relative">
                                <select class="block w-full pl-3 pr-10 py-2.5 bg-gray-50 dark:bg-gray-800 border border-gray-300 dark:border-gray-700 rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-primary/50 focus:border-primary appearance-none cursor-pointer">
                                    <option>Status</option>
                                    <option>Diluluskan</option>
                                    <option>Dalam Semakan</option>
                                    <option>Ditolak</option>
                                </select>
                                <div class="absolute inset-y-0 right-0 pr-3 flex items-center pointer-events-none">
                                    <span class="material-symbols-outlined text-gray-400 text-[20px]">expand_more</span>
                                </div>
                            </div>
                        </div>
                        <button class="w-full md:w-auto px-6 py-2.5 bg-primary text-white rounded-lg font-medium hover:bg-blue-700 transition-colors shadow-sm">
                            Tapis
                        </button>
                    </div>
                </div>
                <!-- Data Table -->
                <div class="bg-white dark:bg-[#1a202c] border-x border-b border-gray-200 dark:border-gray-800 rounded-b-xl overflow-hidden shadow-sm mb-8">
                    <div class="overflow-x-auto">
                        <table class="w-full whitespace-nowrap text-left">
                            <thead>
                                <tr class="bg-gray-50 dark:bg-gray-800 border-b border-gray-200 dark:border-gray-700">
                                    <th class="px-6 py-4 text-xs font-semibold uppercase tracking-wider text-gray-500 dark:text-gray-400">No.</th>
                                    <th class="px-6 py-4 text-xs font-semibold uppercase tracking-wider text-gray-500 dark:text-gray-400">Nama Anak</th>
                                    <th class="px-6 py-4 text-xs font-semibold uppercase tracking-wider text-gray-500 dark:text-gray-400">No. MyKid</th>
                                    <th class="px-6 py-4 text-xs font-semibold uppercase tracking-wider text-gray-500 dark:text-gray-400">Tahun</th>
                                    <th class="px-6 py-4 text-xs font-semibold uppercase tracking-wider text-gray-500 dark:text-gray-400">Tarikh Kemas Kini</th>
                                    <th class="px-6 py-4 text-xs font-semibold uppercase tracking-wider text-gray-500 dark:text-gray-400">Status</th>
                                    <th class="px-6 py-4 text-xs font-semibold uppercase tracking-wider text-gray-500 dark:text-gray-400 text-right">Tindakan</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-100 dark:divide-gray-700">
                                <!-- Row 1: Approved -->
                                <tr class="hover:bg-gray-50 dark:hover:bg-gray-800/50 transition-colors group">
                                    <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-400">1</td>
                                    <td class="px-6 py-4">
                                        <div class="flex items-center">
                                            <div class="h-9 w-9 rounded-full bg-blue-100 text-blue-600 flex items-center justify-center text-xs font-bold mr-3">AZ</div>
                                            <div>
                                                <div class="text-sm font-semibold text-gray-900 dark:text-white">Ahmad Zafir</div>
                                                <div class="text-xs text-gray-500">Tadika Kemas Perumahan Wakaf Tengah</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300 font-mono">180212-10-1234</td>
                                    <td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">2024</td>
                                    <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-400">12 Okt 2023</td>
                                    <td class="px-6 py-4">
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800 dark:bg-green-900/30 dark:text-green-300">
                                            <span class="w-1.5 h-1.5 rounded-full bg-green-500 mr-1.5"></span>
                                            Diluluskan
                                        </span>
                                    </td>
                                    <td class="px-6 py-4 text-right">
                                        <button class="inline-flex items-center text-primary hover:text-blue-700 font-medium text-sm">
                                            <span class="material-symbols-outlined text-[18px] mr-1">download</span>
                                            Surat Tawaran
                                        </button>
                                    </td>
                                </tr>
                                <!-- Row 2: Approved -->
                                <tr class="hover:bg-gray-50 dark:hover:bg-gray-800/50 transition-colors group">
                                    <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-400">2</td>
                                    <td class="px-6 py-4">
                                        <div class="flex items-center">
                                            <div class="h-9 w-9 rounded-full bg-pink-100 text-pink-600 flex items-center justify-center text-xs font-bold mr-3">NA</div>
                                            <div>
                                                <div class="text-sm font-semibold text-gray-900 dark:text-white">Nur Aina</div>
                                                <div class="text-xs text-gray-500">Tadika Kemas Perumahan Wakaf Tengah</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300 font-mono">180615-14-5522</td>
                                    <td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">2024</td>
                                    <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-400">14 Okt 2023</td>
                                    <td class="px-6 py-4">
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800 dark:bg-green-900/30 dark:text-green-300">
                                            <span class="w-1.5 h-1.5 rounded-full bg-green-500 mr-1.5"></span>
                                            Diluluskan
                                        </span>
                                    </td>
                                    <td class="px-6 py-4 text-right">
                                        <button class="inline-flex items-center text-primary hover:text-blue-700 font-medium text-sm">
                                            <span class="material-symbols-outlined text-[18px] mr-1">download</span>
                                            Surat Tawaran
                                        </button>
                                    </td>
                                </tr>
                                <!-- Row 3: Pending -->
                                <tr class="hover:bg-gray-50 dark:hover:bg-gray-800/50 transition-colors group">
                                    <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-400">3</td>
                                    <td class="px-6 py-4">
                                        <div class="flex items-center">
                                            <div class="h-9 w-9 rounded-full bg-purple-100 text-purple-600 flex items-center justify-center text-xs font-bold mr-3">MA</div>
                                            <div>
                                                <div class="text-sm font-semibold text-gray-900 dark:text-white">Muhammad Ali</div>
                                                <div class="text-xs text-gray-500">Tadika Kemas Perumahan Wakaf Tengah</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300 font-mono">190505-10-5678</td>
                                    <td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">2025</td>
                                    <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-400">15 Okt 2023</td>
                                    <td class="px-6 py-4">
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800 dark:bg-yellow-900/30 dark:text-yellow-300">
                                            <span class="w-1.5 h-1.5 rounded-full bg-yellow-500 mr-1.5"></span>
                                            Dalam Semakan
                                        </span>
                                    </td>
                                    <td class="px-6 py-4 text-right">
                                        <button class="inline-flex items-center text-gray-500 hover:text-gray-900 dark:hover:text-white font-medium text-sm">
                                            <span class="material-symbols-outlined text-[18px] mr-1">visibility</span>
                                            Lihat
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- Pagination -->
                    <div class="flex items-center justify-between px-6 py-4 bg-gray-50 dark:bg-gray-800/50 border-t border-gray-200 dark:border-gray-800">
                        <div class="text-sm text-gray-500 dark:text-gray-400">
                            Menunjukkan <span class="font-medium text-gray-900 dark:text-white">1</span> hingga <span class="font-medium text-gray-900 dark:text-white">3</span> daripada <span class="font-medium text-gray-900 dark:text-white">3</span> rekod
                        </div>
                        <div class="flex gap-2">
                            <button class="px-3 py-1 text-sm border border-gray-300 dark:border-gray-600 rounded bg-white dark:bg-gray-700 text-gray-500 dark:text-gray-300 disabled:opacity-50" disabled="">Sebelum</button>
                            <button class="px-3 py-1 text-sm border border-gray-300 dark:border-gray-600 rounded bg-white dark:bg-gray-700 text-gray-500 dark:text-gray-300 disabled:opacity-50" disabled="">Seterusnya</button>
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
