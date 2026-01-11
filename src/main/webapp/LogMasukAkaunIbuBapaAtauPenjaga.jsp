<%-- 
    Document   : LogMasukAkaunIbuBapaAtauPenjaga.jsp
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="light">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>i-KEMAS</title>
        <link rel="icon" href="image/Sistem.png">

        <!-- Google Fonts & Icons -->
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;700&family=Public+Sans:wght@400;700&display=swap" rel="stylesheet"/>

        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>

        <!-- External CSS -->
        <link rel="stylesheet" href="css/LogMasukAkaunIbuBapaAtauPenjaga.css">
    </head>
    <body class="bg-background-light dark:bg-background-dark font-display text-[#0d121b] dark:text-white antialiased">

        <%-- Notification bar overlay berdasarkan status login --%>
        <%
            String status = request.getParameter("status");
            String message = "";
            String bgColor = "";

            if ("success".equals(status)) {
                message = "Log masuk berjaya! Selamat datang kembali.";
                bgColor = "bg-green-500";
            } else if ("error".equals(status)) {
                message = "Log masuk gagal. Sila semak emel atau kata laluan anda.";
                bgColor = "bg-red-500";
            } else if ("warning".equals(status)) {
                message = "Sesi tamat. Sila log masuk semula.";
                bgColor = "bg-yellow-500";
            }
        %>

        <% if (!message.isEmpty()) {%>
        <div id="overlayAlert" class="fixed top-0 left-0 w-full z-50 <%= bgColor%> text-white text-center py-4 font-semibold shadow-md transition-all duration-500 show">
            <%= message%>
        </div>
        <script>
            setTimeout(() => {
                const alert = document.getElementById('overlayAlert');
                if (alert) {
                    alert.classList.remove('show'); // animasi slide-up
                    alert.style.opacity = '0';
                }
            <% if ("success".equals(status)) { %>
                // Redirect ke dashboard selepas alert hilang
                window.location = 'DashboardAkaunIbuBapaAtauPenjaga.jsp';
            <% } %>
            }, 3000);
        </script>
        <% } %>

        <!-- Login Form -->
        <div class="flex min-h-screen w-full flex-row overflow-hidden">
            <!-- Left Side (Info) -->
            <div class="relative hidden lg:flex w-1/2 flex-col justify-between bg-primary p-12 xl:p-16">
                <div class="absolute inset-0 bg-cover bg-center z-0 bg-murid"></div>
                <div class="relative z-10 flex items-center gap-3">
                    <div>
                        <h3 class="text-xl font-bold text-white">i-KEMAS</h3>
                        <p class="text-xs text-blue-100 uppercase tracking-widest opacity-80">Sistem Pengurusan Kanak-Kanak Tabika KEMAS</p>
                    </div>
                </div>
                <div class="relative z-10 max-w-lg">
                    <h1 class="text-4xl xl:text-5xl font-bold text-white mb-6">Penggerak Kesejahteraan Masyarakat Luar Bandar</h1>
                    <p class="text-lg text-blue-100 mb-8">Akses sistem pengurusan pendidikan awal kanak-kanak yang holistik dan bersepadu.</p>
                </div>
            </div>

            <!-- Right Side (Form) -->
            <div class="flex w-full lg:w-1/2 flex-col justify-center items-center p-6 md:p-12 lg:p-16 relative bg-background-light dark:bg-background-dark">
                <div class="w-full max-w-[440px] flex flex-col gap-8">
                    <div class="flex flex-col gap-2 text-left">
                        <h2 class="text-[32px] font-bold">Selamat Kembali</h2>
                        <p class="text-slate-500 dark:text-slate-400">Sila masukkan butiran anda untuk akses akaun.</p>
                    </div>

                    <form action="${pageContext.request.contextPath}/controller/LogMasukAkaunIbuBapaAtauPenjagaServlet" method="post" class="flex flex-col gap-5">
                        <label class="flex flex-col">
                            <span class="text-sm font-semibold">E-mel</span>
                            <%-- Ambil email dari cookie jika ada --%>
                            <%
                                String savedEmail = "";
                                javax.servlet.http.Cookie[] cookies = request.getCookies();
                                if (cookies != null) {
                                    for (javax.servlet.http.Cookie c : cookies) {
                                        if ("userEmail".equals(c.getName())) {
                                            savedEmail = c.getValue();
                                        }
                                    }
                                }
                            %>
                            <input type="email" class="form-input" name="emelAkaun" value="<%= savedEmail%>" required/>
                        </label>

                        <!-- Input Kata Laluan -->
                        <label class="flex flex-col">
                            <span class="text-sm font-semibold">Kata Laluan</span>
                            <input type="password" class="form-input" name="kataLaluanAkaun" required/>
                        </label>

                        <!-- Ingat Saya + Lupa Kata Laluan -->
                        <div class="flex justify-between items-center">
                            <label class="flex items-center gap-2">
                                <input type="checkbox" name="ingatSaya" class="form-checkbox"/> Ingat Saya
                            </label>
                            <a href="LupaKataLaluanAkaunIbuBapaAtauPenjaga.jsp" class="text-sm font-bold text-primary">Lupa Kata Laluan?</a>
                        </div>

                        <!-- Butang Log Masuk -->
                        <button type="submit" class="btn-primary">Log Masuk</button>
                    </form>

                    <!-- Link ke Daftar -->
                    <div class="text-center">
                        <p>Belum mempunyai akaun?
                            <a href="DaftarAkaunIbuBapaAtauPenjaga.jsp" class="text-primary font-bold">Daftar Sekarang</a>
                        </p>
                    </div>

                    <!-- Footer -->
                    <div class="text-xs text-slate-400 dark:text-slate-600 text-center">
                        &copy; 2026 Jabatan Kemajuan Masyarakat (KEMAS)
                    </div>
                </div>
            </div>
        </div>

        <!-- Block Back Function -->
        <script>
            // Tambah state baru ke history
            history.pushState(null, null, location.href);

            // Bila user tekan back, push semula state
            window.onpopstate = function () {
                history.pushState(null, null, location.href);
            };
        </script>
    </body>
</html>
