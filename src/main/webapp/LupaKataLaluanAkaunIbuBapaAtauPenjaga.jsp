<%-- 
    Document   : LupaKataLaluanAkaunIbuBapaAtauPenjaga.jsp
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
        <link rel="stylesheet" href="css/LupaKataLaluanAkaunIbuBapaAtauPenjaga.css">
    </head>
    <body class="bg-background-light dark:bg-background-dark font-display text-[#0d121b] dark:text-white antialiased">

        <!-- Block Back Function -->
        <script>
            history.pushState(null, null, location.href);
            window.onpopstate = function () {
                history.pushState(null, null, location.href);
            };
        </script>

        <%-- Notification bar overlay berdasarkan status reset password --%>
        <%
            String status = request.getParameter("status");
            String message = "";
            String bgColor = "";

            if ("resetSuccess".equals(status)) {
                message = "Kata laluan berjaya ditukar!";
                bgColor = "bg-green-500";
            } else if ("notMatch".equals(status)) {
                message = "Kata laluan tidak sama. Sila cuba lagi.";
                bgColor = "bg-red-500";
            } else if ("invalidEmail".equals(status)) {
                message = "Emel tidak wujud dalam sistem. Sila semak semula.";
                bgColor = "bg-red-500";
            } else if ("resetError".equals(status)) {
                message = "Ralat semasa tukar kata laluan.";
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
            <% if ("resetSuccess".equals(status)) { %>
                // Redirect ke log masuk selepas alert hilang
                window.location = 'LogMasukAkaunIbuBapaAtauPenjaga.jsp';
            <% } %>
            }, 3000);
        </script>
        <% }%>

        <div class="flex min-h-screen w-full flex-row overflow-hidden">
            <!-- Left Side -->
            <div class="relative hidden lg:flex w-1/2 flex-col justify-between bg-primary p-12 xl:p-16">
                <div class="absolute inset-0 bg-cover bg-center z-0 bg-murid"></div>

                <!-- Branding -->
                <div class="relative z-10 flex items-center gap-3">
                    <div>
                        <h3 class="text-xl font-bold text-white">i-KEMAS</h3>
                        <p class="text-xs text-blue-100 uppercase tracking-widest opacity-80">Sistem Pengurusan Kanak-Kanak Tabika KEMAS</p>
                    </div>
                </div>

                <!-- Slogan -->
                <div class="relative z-10 max-w-lg">
                    <h1 class="text-4xl xl:text-5xl font-bold text-white mb-6">Penggerak Kesejahteraan Masyarakat Luar Bandar</h1>
                    <p class="text-lg text-blue-100 mb-8">Akses sistem pengurusan pendidikan awal kanak-kanak yang holistik dan bersepadu.</p>
                </div>
            </div>

            <!-- Right Side: Reset Password Form -->
            <div class="flex w-full lg:w-1/2 flex-col justify-center items-center p-6 md:p-12 lg:p-16 relative bg-background-light dark:bg-background-dark">
                <div class="w-full max-w-[440px] flex flex-col gap-8">
                    <div class="flex flex-col gap-2 text-left">
                        <h2 class="text-[32px] font-bold">Set Semula Kata Laluan</h2>
                        <p class="text-slate-500 dark:text-slate-400">Sila masukkan kata laluan baru anda di bawah untuk mengakses akaun anda.</p>
                    </div>

                    <!-- Form --> 
                    <form action="${pageContext.request.contextPath}/LupaKataLaluanAkaunIbuBapaAtauPenjagaServlet" method="post" class="flex flex-col gap-5">
                        <div class="flex gap-4">
                            <label class="flex flex-col flex-1">
                                <span class="text-sm font-semibold">E-mel</span>
                                <input type="email" class="form-input" name="emelAkaun" required/>
                            </label>
                        </div>

                        <div class="grid grid-cols-2 gap-4">
                            <label class="flex flex-col">
                                <span class="text-sm font-semibold">Kata Laluan Baru</span>
                                <input type="password" id="kataLaluanAkaun" name="kataLaluanAkaun" required/>
                                <small id="passwordStrength"></small>
                            </label>

                            <label class="flex flex-col">
                                <span class="text-sm font-semibold">Sahkan Kata Laluan Baru</span>
                                <input type="password" id="pengesahanKataLaluanAkaun" name="pengesahanKataLaluanAkaun" required/>
                                <small id="passwordMatchMsg"></small>
                            </label>
                        </div>

                        <!-- Button --> 
                        <button type="submit" class="btn-primary">Sahkan Perubahan</button>
                    </form>

                    <div class="text-center">
                        <p>Kembali ke
                            <a href="LogMasukAkaunIbuBapaAtauPenjaga.jsp" class="text-primary font-bold">Log Masuk</a>
                        </p>
                    </div>

                    <div class="text-xs text-slate-400 dark:text-slate-600 text-center">
                        &copy; 2026 Jabatan Kemajuan Masyarakat (KEMAS)
                    </div>
                </div>
            </div>
        </div>

        <!-- Password validation JS -->
        <script src="js/PengesahanKataLaluanAkaunIbuBapaAtauPenjaga.js"></script>
    </body>
</html>