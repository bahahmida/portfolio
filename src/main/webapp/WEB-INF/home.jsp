
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bahaeddine Hmida - Portfolio</title>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">


    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#about">
            <i class="fas fa-code me-2"></i>
            Bahaeddine Hmida
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#about" data-section="about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#skills" data-section="skills">Skills</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#projects" data-section="projects">Projects</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact" data-section="contact">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<section id="about" class="hero-section">
    <div class="container">
        <div class="row align-items-center" style="min-height: 80vh;">

            <div class="col-lg-7 order-2 order-lg-1">
                <div class="hero-content">
                        <span class="badge bg-primary mb-3 px-4 py-2" style="font-size: 1rem;">
                            👋 Hello, I'm
                        </span>
                    <h1 class="hero-title">Bahaeddine Hmida</h1>
                    <h2 class="hero-subtitle">Software & Data <span class="text-primary">Engineering Student</span></h2>
                    <p class="hero-description">
                        Motivated engineering student seeking a summer internship to gain hands-on experience.
                        Passionate about software development, machine learning, and data engineering.
                    </p>


                    <div class="about-info mt-3">
                        <div class="info-item">
                            <i class="fas fa-envelope me-2" style="color: #0d6efd;"></i>
                            <span>Bahahmida95@gmail.com</span>
                        </div>
                        <div class="info-item">
                            <i class="fas fa-phone me-2" style="color: #0d6efd;"></i>
                            <span>(+216) 93541211</span>
                        </div>
                        <div class="info-item">
                            <i class="fas fa-map-marker-alt me-2" style="color: #0d6efd;"></i>
                            <span>Monastir, Tunisia</span>
                        </div>
                        <div class="info-item">
                            <i class="fas fa-university me-2" style="color: #0d6efd;"></i>
                            <span>Faculty of Sciences of Bizerte | University of Carthage</span>
                        </div>
                    </div>

                    <div class="hero-buttons mt-4">
                        <a href="assets/cv.pdf" download class="btn btn-primary btn-lg me-3">
                            <i class="fas fa-download me-2"></i>Download CV
                        </a>
                        <a href="#projects" class="btn btn-outline-primary btn-lg">
                            <i class="fas fa-eye me-2"></i>View Projects
                        </a>
                    </div>


                    <div class="social-links mt-4">
                        <a href="https://github.com/bahahmida" target="_blank" class="social-link" title="GitHub">
                            <i class="fab fa-github"></i>
                        </a>
                        <a href="https://www.linkedin.com/in/baha-hmida-a61106310/" target="_blank" class="social-link" title="LinkedIn">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-5 text-center order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="profile-wrapper">
                    <img src="${pageContext.request.contextPath}/images/profile.jpeg"
                         alt="Bahaeddine Hmida"
                         class="profile-image">
                    <div class="profile-ring"></div>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- ============================================================
SECTION SKILLS
============================================================ -->
<section id="skills" class="section-padding skills-section">
    <div class="container">
        <h2 class="section-title text-center">My Skills</h2>
        <div class="section-divider"></div>
        <p class="section-subtitle text-center">
            skills across categories
        </p>

        <div class="row g-4 mt-3">
            <c:forEach items="${skills}" var="skill">
                <div class="col-lg-4 col-md-6">
                    <div class="skill-card">
                        <h5>${skill.category}</h5>
                        <div>
                            <c:forEach items="${skill.skills}" var="tech">
                                <span class="skill-tag">${tech}</span>
                            </c:forEach>
                        </div>
                        <span class="skill-count">${skill.skillCount} skills</span>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>


<section id="projects" class="section-padding projects-section">
    <div class="container">
        <h2 class="section-title text-center">My Projects</h2>
        <div class="section-divider"></div>
        <p class="section-subtitle text-center">
            ${projectCount} projects built with different technologies
        </p>

        <div class="row g-4 mt-3">
            <c:forEach items="${projects}" var="project">
                <div class="col-md-4">
                    <div class="project-card">
                        <div class="card-body">
                            <span class="category-badge">${project.category}</span>
                            <h5 class="card-title">${project.name}</h5>
                            <p class="card-text">${project.description}</p>

                            <div class="mb-3">
                                <c:forEach items="${project.techList}" var="tech">
                                    <span class="tech-tag">${tech}</span>
                                </c:forEach>
                            </div>

                            <a href="${project.githubLink}" target="_blank" class="btn btn-dark btn-sm w-100">
                                <i class="fab fa-github me-2"></i>View on GitHub
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <c:if test="${empty projects}">
            <div class="text-center py-5">
                <i class="fas fa-folder-open fa-3x text-muted mb-3"></i>
                <p class="text-muted">No projects available</p>
            </div>
        </c:if>
    </div>
</section>


<section id="contact" class="section-padding contact-section">
    <div class="container">
        <h2 class="section-title text-center">Contact Me</h2>
        <div class="section-divider"></div>
        <p class="section-subtitle text-center">
            Feel free to reach out to discuss your projects
        </p>

        <div class="row g-4 mt-3">
            <!-- Email -->
            <div class="col-md-3">
                <div class="contact-card">
                    <div class="contact-icon">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <h5>Email</h5>
                    <p>Bahahmida95@gmail.com</p>
                </div>
            </div>

            <!-- WhatsApp -->
            <div class="col-md-3">
                <div class="contact-card">
                    <div class="contact-icon">
                        <i class="fab fa-whatsapp"></i>
                    </div>
                    <h5>WhatsApp</h5>
                    <p>(+216) 93541211</p>
                </div>
            </div>

            <!-- Facebook -->
            <div class="col-md-3">
                <div class="contact-card">
                    <div class="contact-icon">
                        <i class="fab fa-facebook"></i>
                    </div>
                    <h5>Facebook</h5>
                    <p>
                        <a href="https://www.facebook.com/baha.hmida.2004?locale=fr_FR"
                           target="_blank"
                           style="color: #6c757d; text-decoration: none;">
                            Bahaeddine Hmida
                        </a>
                    </p>
                </div>
            </div>

            <!-- LinkedIn -->
            <div class="col-md-3">
                <div class="contact-card">
                    <div class="contact-icon">
                        <i class="fab fa-linkedin-in"></i>
                    </div>
                    <h5>LinkedIn</h5>
                    <p>
                        <a href="https://www.linkedin.com/in/baha-hmida-a61106310/"
                           target="_blank"
                           style="color: #6c757d; text-decoration: none;">
                            Bahaeddine Hmida
                        </a>
                    </p>
                </div>
            </div>
        </div>


    </div>
</section>


<footer class="footer">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-start">
                <p>© 2024 Bahaeddine Hmida - Portfolio JEE</p>
            </div>
            <div class="col-md-6 text-center text-md-end">
                <div class="footer-social">
                    <!-- GitHub -->
                    <a href="https://github.com/bahahmida" target="_blank" class="footer-social-link" title="GitHub">
                        <i class="fab fa-github"></i>
                    </a>
                    <!-- LinkedIn -->
                    <a href="https://www.linkedin.com/in/baha-hmida-a61106310/" target="_blank" class="footer-social-link" title="LinkedIn">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Script to handle active link and close mobile menu -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var navLinks = document.querySelectorAll('.navbar-nav .nav-link');
        var navbarCollapse = document.getElementById('navbarNav');

        function updateActiveLink() {
            var scrollPosition = window.scrollY + 100;

            navLinks.forEach(function(link) {
                var sectionId = link.getAttribute('href');
                var section = document.querySelector(sectionId);

                if (section) {
                    var sectionTop = section.offsetTop;
                    var sectionBottom = sectionTop + section.offsetHeight;

                    if (scrollPosition >= sectionTop && scrollPosition < sectionBottom) {
                        navLinks.forEach(function(l) { l.classList.remove('active'); });
                        link.classList.add('active');
                    }
                }
            });
        }

        window.addEventListener('scroll', updateActiveLink);

        navLinks.forEach(function(link) {
            link.addEventListener('click', function(e) {
                navLinks.forEach(function(l) { l.classList.remove('active'); });
                this.classList.add('active');

                var bsCollapse = bootstrap.Collapse.getInstance(navbarCollapse);
                if (bsCollapse) {
                    bsCollapse.hide();
                }
            });
        });

        updateActiveLink();
    });
</script>
</body>
</html>