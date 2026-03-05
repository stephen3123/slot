<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Stephen Mathew — Web Developer</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet"/>
  <style>
    *,*::before,*::after{box-sizing:border-box;margin:0;padding:0}
    :root{--bg:#0a0a0f;--bg2:#111118;--card:#16161f;--border:#2a2a3a;--accent:#7c6af7;--accent2:#a78bfa;--teal:#2dd4bf;--pink:#f472b6;--text:#e8e8f0;--muted:#8888a8;--white:#ffffff}
    html{scroll-behavior:smooth}
    body{font-family:'Inter',sans-serif;background:var(--bg);color:var(--text);overflow-x:hidden;line-height:1.6}
    nav{position:fixed;top:0;width:100%;z-index:100;padding:1.2rem 2rem;display:flex;justify-content:space-between;align-items:center;background:rgba(10,10,15,.9);backdrop-filter:blur(20px);border-bottom:1px solid var(--border)}
    .nav-logo{font-family:'Space Grotesk',sans-serif;font-size:1.2rem;font-weight:700;background:linear-gradient(135deg,var(--accent2),var(--teal));-webkit-background-clip:text;-webkit-text-fill-color:transparent}
    .nav-links{display:flex;gap:2rem;list-style:none}
    .nav-links a{color:var(--muted);text-decoration:none;font-size:.875rem;font-weight:500;transition:color .2s}
    .nav-links a:hover{color:var(--accent2)}
    .hero{min-height:100vh;display:flex;align-items:center;justify-content:center;padding:6rem 2rem 4rem;position:relative;overflow:hidden}
    .hero-glow{position:absolute;width:600px;height:600px;border-radius:50%;background:radial-gradient(circle,rgba(124,106,247,.18) 0%,transparent 70%);top:50%;left:50%;transform:translate(-50%,-50%);pointer-events:none}
    .hero-glow2{position:absolute;width:400px;height:400px;border-radius:50%;background:radial-gradient(circle,rgba(45,212,191,.12) 0%,transparent 70%);bottom:10%;right:10%;pointer-events:none}
    .hero-inner{max-width:800px;text-align:center;position:relative;z-index:1}
    .hero-badge{display:inline-flex;align-items:center;gap:.5rem;background:rgba(124,106,247,.12);border:1px solid rgba(124,106,247,.3);border-radius:2rem;padding:.4rem 1rem;font-size:.8rem;font-weight:500;color:var(--accent2);margin-bottom:1.5rem;letter-spacing:.05em;text-transform:uppercase}
    .hero-badge span{width:6px;height:6px;border-radius:50%;background:var(--teal);animation:pulse 2s infinite}
    @keyframes pulse{0%,100%{opacity:1}50%{opacity:.3}}
    .hero h1{font-family:'Space Grotesk',sans-serif;font-size:clamp(3rem,8vw,5.5rem);font-weight:700;line-height:1.05;letter-spacing:-.03em;color:var(--white);margin-bottom:.5rem}
    .hero h1 .highlight{background:linear-gradient(135deg,var(--accent2) 0%,var(--teal) 100%);-webkit-background-clip:text;-webkit-text-fill-color:transparent}
    .hero-sub{font-size:1.2rem;color:var(--muted);margin:1.2rem 0 2.5rem}
    .hero-ctas{display:flex;gap:1rem;justify-content:center;flex-wrap:wrap}
    .btn-primary{padding:.8rem 1.8rem;background:linear-gradient(135deg,var(--accent),var(--accent2));color:#fff;border:none;border-radius:.6rem;font-size:.95rem;font-weight:600;cursor:pointer;text-decoration:none;transition:transform .2s,box-shadow .2s;box-shadow:0 0 20px rgba(124,106,247,.3)}
    .btn-primary:hover{transform:translateY(-2px);box-shadow:0 0 30px rgba(124,106,247,.5)}
    .btn-outline{padding:.8rem 1.8rem;background:transparent;color:var(--text);border:1px solid var(--border);border-radius:.6rem;font-size:.95rem;font-weight:500;cursor:pointer;text-decoration:none;transition:border-color .2s,color .2s}
    .btn-outline:hover{border-color:var(--accent2);color:var(--accent2)}
    section{padding:5rem 2rem;position:relative;z-index:1}
    .container{max-width:1000px;margin:0 auto}
    .section-label{display:inline-flex;align-items:center;gap:.5rem;color:var(--accent2);font-size:.8rem;font-weight:600;letter-spacing:.1em;text-transform:uppercase;margin-bottom:1rem}
    .section-label::before{content:'';display:block;width:24px;height:2px;background:linear-gradient(90deg,var(--accent),var(--teal))}
    .section-title{font-family:'Space Grotesk',sans-serif;font-size:clamp(1.8rem,4vw,2.4rem);font-weight:700;color:var(--white);margin-bottom:3rem;line-height:1.2}
    #about,#education,#languages,#contact{background:var(--bg2)}
    .about-grid{display:grid;grid-template-columns:1fr 1.6fr;gap:4rem;align-items:center}
    .about-avatar{width:100%;aspect-ratio:1;border-radius:1.5rem;background:linear-gradient(135deg,rgba(124,106,247,.2),rgba(45,212,191,.1));border:2px solid var(--border);display:flex;align-items:center;justify-content:center;font-size:6rem;max-width:260px}
    .about-text p{color:var(--muted);margin-bottom:1.2rem;font-size:1.05rem;line-height:1.8}
    .about-stats{display:grid;grid-template-columns:repeat(3,1fr);gap:1rem;margin-top:2rem}
    .stat-box{background:var(--card);border:1px solid var(--border);border-radius:.8rem;padding:1rem;text-align:center}
    .stat-num{font-family:'Space Grotesk',sans-serif;font-size:1.6rem;font-weight:700;color:var(--accent2)}
    .stat-label{font-size:.75rem;color:var(--muted);margin-top:.2rem}
    .skills-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(280px,1fr));gap:1.5rem}
    .skill-card{background:var(--card);border:1px solid var(--border);border-radius:1rem;padding:1.8rem;transition:border-color .3s,transform .2s}
    .skill-card:hover{border-color:var(--accent);transform:translateY(-3px)}
    .skill-card-icon{width:44px;height:44px;border-radius:.7rem;display:flex;align-items:center;justify-content:center;font-size:1.3rem;margin-bottom:1rem}
    .icon-purple{background:rgba(124,106,247,.15)}
    .icon-teal{background:rgba(45,212,191,.15)}
    .icon-pink{background:rgba(244,114,182,.15)}
    .skill-card h3{font-family:'Space Grotesk',sans-serif;font-size:1rem;font-weight:600;color:var(--white);margin-bottom:.8rem}
    .skill-tags{display:flex;flex-wrap:wrap;gap:.4rem}
    .tag{background:rgba(255,255,255,.05);border:1px solid var(--border);border-radius:.4rem;padding:.25rem .65rem;font-size:.78rem;color:var(--muted);transition:all .2s}
    .tag:hover{border-color:var(--accent2);color:var(--accent2);background:rgba(124,106,247,.1)}
    .timeline{position:relative;padding-left:2rem}
    .timeline::before{content:'';position:absolute;left:0;top:0;bottom:0;width:2px;background:linear-gradient(to bottom,var(--accent),var(--teal),transparent)}
    .timeline-item{position:relative;margin-bottom:2.5rem}
    .timeline-dot{position:absolute;left:-2.35rem;top:.3rem;width:14px;height:14px;border-radius:50%;background:var(--accent);border:3px solid var(--bg2);box-shadow:0 0 12px rgba(124,106,247,.5)}
    .timeline-card{background:var(--card);border:1px solid var(--border);border-radius:1rem;padding:1.8rem}
    .timeline-date{font-size:.8rem;color:var(--accent2);font-weight:600;letter-spacing:.05em;text-transform:uppercase;margin-bottom:.5rem}
    .timeline-card h3{font-family:'Space Grotesk',sans-serif;font-size:1.2rem;font-weight:700;color:var(--white)}
    .timeline-card .inst{color:var(--teal);font-weight:500;margin:.3rem 0 .8rem}
    .timeline-card p{color:var(--muted);font-size:.9rem}
    .cert-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(300px,1fr));gap:1.5rem}
    .cert-card{background:var(--card);border:1px solid var(--border);border-radius:1rem;padding:1.8rem;display:flex;gap:1.2rem;align-items:flex-start;transition:border-color .3s,transform .2s}
    .cert-card:hover{border-color:var(--teal);transform:translateY(-3px)}
    .cert-icon{width:48px;height:48px;border-radius:.8rem;flex-shrink:0;background:rgba(45,212,191,.12);display:flex;align-items:center;justify-content:center;font-size:1.4rem}
    .cert-info h3{font-family:'Space Grotesk',sans-serif;font-size:.95rem;font-weight:600;color:var(--white);margin-bottom:.3rem}
    .cert-info .issuer{color:var(--teal);font-size:.85rem;font-weight:500}
    .cert-info .cert-date{color:var(--muted);font-size:.8rem;margin-top:.3rem}
    .lang-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:1.5rem}
    .lang-card{background:var(--card);border:1px solid var(--border);border-radius:1rem;padding:1.8rem}
    .lang-card h3{font-family:'Space Grotesk',sans-serif;font-size:1.1rem;font-weight:700;color:var(--white);margin-bottom:.3rem}
    .lang-level-badge{display:inline-block;padding:.2rem .7rem;border-radius:2rem;font-size:.75rem;font-weight:600;margin-bottom:1.2rem}
    .native{background:rgba(124,106,247,.2);color:var(--accent2)}
    .proficient{background:rgba(45,212,191,.2);color:var(--teal)}
    .basic{background:rgba(244,114,182,.2);color:var(--pink)}
    .lang-skills{display:flex;flex-direction:column;gap:.6rem}
    .lang-skill-row{display:flex;justify-content:space-between;align-items:center}
    .lang-skill-name{font-size:.8rem;color:var(--muted);width:70px}
    .lang-skill-bar{flex:1;height:4px;background:var(--border);border-radius:2px;margin:0 .8rem}
    .lang-skill-fill{height:100%;border-radius:2px;background:linear-gradient(90deg,var(--accent),var(--teal))}
    .lang-skill-val{font-size:.75rem;color:var(--accent2);font-weight:600;width:24px;text-align:right}
    .interests-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:1rem}
    .interest-item{background:var(--card);border:1px solid var(--border);border-radius:.8rem;padding:1.2rem 1.4rem;display:flex;align-items:center;gap:.8rem;transition:border-color .3s}
    .interest-item:hover{border-color:var(--accent2)}
    .interest-item span:first-child{font-size:1.3rem}
    .interest-item p{font-size:.85rem;color:var(--muted)}
    .contact-inner{max-width:600px;margin:0 auto;text-align:center}
    .contact-cards{display:flex;flex-wrap:wrap;gap:1rem;justify-content:center;margin-top:2.5rem}
    .contact-card{background:var(--card);border:1px solid var(--border);border-radius:1rem;padding:1.2rem 2rem;display:flex;align-items:center;gap:.8rem;text-decoration:none;color:var(--text);transition:all .3s}
    .contact-card:hover{border-color:var(--accent2);transform:translateY(-3px);box-shadow:0 8px 30px rgba(124,106,247,.2)}
    .cc-icon{font-size:1.3rem}
    .cc-label{font-size:.75rem;color:var(--muted)}
    .cc-val{font-size:.9rem;font-weight:500}
    footer{text-align:center;padding:2rem;color:var(--muted);font-size:.85rem;border-top:1px solid var(--border)}
    @media(max-width:768px){.about-grid{grid-template-columns:1fr}.about-avatar{max-width:180px;margin:0 auto}}
    @media(max-width:480px){.nav-links{display:none}}
  </style>
</head>
<body>

  <nav>
    <div class="nav-logo">SM</div>
    <ul class="nav-links">
      <li><a href="#about">About</a></li>
      <li><a href="#skills">Skills</a></li>
      <li><a href="#education">Education</a></li>
      <li><a href="#certifications">Certs</a></li>
      <li><a href="#contact">Contact</a></li>
    </ul>
  </nav>

  <section class="hero">
    <div class="hero-glow"></div>
    <div class="hero-glow2"></div>
    <div class="hero-inner">
      <div class="hero-badge"><span></span> Available for opportunities</div>
      <h1>Stephen <span class="highlight">Mathew</span></h1>
      <p class="hero-sub">Web Developer &amp; Information Systems Student · Riga, Latvia</p>
      <div class="hero-ctas">
        <a href="#contact" class="btn-primary">Get in touch</a>
        <a href="#skills" class="btn-outline">View my skills</a>
      </div>
    </div>
  </section>

  <section id="about">
    <div class="container">
      <div class="about-grid">
        <div>
          <div class="about-avatar">👨‍💻</div>
        </div>
        <div class="about-text">
          <div class="section-label">About Me</div>
          <h2 class="section-title" style="margin-bottom:1.2rem">Building the web,<br/>one line at a time.</h2>
          <p>I'm an Information Systems undergraduate at Riga Nordic University with hands-on experience building responsive web applications and integrating backend services using Firebase.</p>
          <p>Proficient in JavaScript development and systematic problem-solving — dependable, detail-oriented, and motivated to contribute within technology-focused teams.</p>
          <div class="about-stats">
            <div class="stat-box"><div class="stat-num">2+</div><div class="stat-label">Years Coding</div></div>
            <div class="stat-box"><div class="stat-num">3</div><div class="stat-label">Languages</div></div>
            <div class="stat-box"><div class="stat-num">2</div><div class="stat-label">IBM Certs</div></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="skills">
    <div class="container">
      <div class="section-label">What I know</div>
      <h2 class="section-title">Skills &amp; Competencies</h2>
      <div class="skills-grid">
        <div class="skill-card">
          <div class="skill-card-icon icon-purple">🌐</div>
          <h3>Frontend Development</h3>
          <div class="skill-tags">
            <span class="tag">HTML</span><span class="tag">CSS</span><span class="tag">JavaScript</span>
            <span class="tag">Responsive Web Design</span><span class="tag">Git &amp; GitHub</span>
          </div>
        </div>
        <div class="skill-card">
          <div class="skill-card-icon icon-teal">🔥</div>
          <h3>Backend &amp; Database</h3>
          <div class="skill-tags">
            <span class="tag">Firebase Auth</span><span class="tag">Firestore</span>
            <span class="tag">Database Design</span><span class="tag">Basic Networking</span>
          </div>
        </div>
        <div class="skill-card">
          <div class="skill-card-icon icon-pink">🧠</div>
          <h3>Core IT Competencies</h3>
          <div class="skill-tags">
            <span class="tag">Documentation</span><span class="tag">Systems Architecture</span>
            <span class="tag">Problem Analysis</span><span class="tag">Software Testing</span><span class="tag">Debugging</span>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="education">
    <div class="container">
      <div class="section-label">Academic Background</div>
      <h2 class="section-title">Education &amp; Training</h2>
      <div class="timeline">
        <div class="timeline-item">
          <div class="timeline-dot"></div>
          <div class="timeline-card">
            <div class="timeline-date">Aug 2023 — Present</div>
            <h3>Bachelor's in Information Systems</h3>
            <p class="inst">Riga Nordic University — Riga, Latvia</p>
            <p>Engineering field of study, focusing on information systems design, web technologies, and software development principles.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="certifications">
    <div class="container">
      <div class="section-label">Credentials</div>
      <h2 class="section-title">Certifications</h2>
      <div class="cert-grid">
        <div class="cert-card">
          <div class="cert-icon">🤖</div>
          <div class="cert-info">
            <h3>AI Fundamentals: Language and Vision in AI</h3>
            <div class="issuer">IBM</div>
            <div class="cert-date">Issued February 2026 · Online</div>
          </div>
        </div>
        <div class="cert-card">
          <div class="cert-icon">💼</div>
          <div class="cert-info">
            <h3>AI-Enabled Applications for Customer Service</h3>
            <div class="issuer">IBM</div>
            <div class="cert-date">Issued March 2026 · Online</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="languages">
    <div class="container">
      <div class="section-label">Communication</div>
      <h2 class="section-title">Language Proficiency</h2>
      <div class="lang-grid">
        <div class="lang-card">
          <h3>Malayalam</h3>
          <span class="lang-level-badge native">Native</span>
          <div class="lang-skills">
            <div class="lang-skill-row">
              <span class="lang-skill-name">All skills</span>
              <div class="lang-skill-bar"><div class="lang-skill-fill" style="width:100%"></div></div>
              <span class="lang-skill-val">C2</span>
            </div>
          </div>
        </div>
        <div class="lang-card">
          <h3>English</h3>
          <span class="lang-level-badge proficient">C1–C2 Proficient</span>
          <div class="lang-skills">
            <div class="lang-skill-row"><span class="lang-skill-name">Listening</span><div class="lang-skill-bar"><div class="lang-skill-fill" style="width:100%"></div></div><span class="lang-skill-val">C2</span></div>
            <div class="lang-skill-row"><span class="lang-skill-name">Reading</span><div class="lang-skill-bar"><div class="lang-skill-fill" style="width:100%"></div></div><span class="lang-skill-val">C2</span></div>
            <div class="lang-skill-row"><span class="lang-skill-name">Writing</span><div class="lang-skill-bar"><div class="lang-skill-fill" style="width:83%"></div></div><span class="lang-skill-val">B2</span></div>
            <div class="lang-skill-row"><span class="lang-skill-name">Speaking</span><div class="lang-skill-bar"><div class="lang-skill-fill" style="width:91%"></div></div><span class="lang-skill-val">C1</span></div>
          </div>
        </div>
        <div class="lang-card">
          <h3>Hindi</h3>
          <span class="lang-level-badge basic">A2–B1 Basic</span>
          <div class="lang-skills">
            <div class="lang-skill-row"><span class="lang-skill-name">Listening</span><div class="lang-skill-bar"><div class="lang-skill-fill" style="width:33%"></div></div><span class="lang-skill-val">A2</span></div>
            <div class="lang-skill-row"><span class="lang-skill-name">Reading</span><div class="lang-skill-bar"><div class="lang-skill-fill" style="width:33%"></div></div><span class="lang-skill-val">A2</span></div>
            <div class="lang-skill-row"><span class="lang-skill-name">Writing</span><div class="lang-skill-bar"><div class="lang-skill-fill" style="width:33%"></div></div><span class="lang-skill-val">A2</span></div>
            <div class="lang-skill-row"><span class="lang-skill-name">Speaking</span><div class="lang-skill-bar"><div class="lang-skill-fill" style="width:50%"></div></div><span class="lang-skill-val">B1</span></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="interests">
    <div class="container">
      <div class="section-label">What drives me</div>
      <h2 class="section-title">Interests</h2>
      <div class="interests-grid">
        <div class="interest-item"><span>🚀</span><p>Exploring emerging technologies &amp; digital tools</p></div>
        <div class="interest-item"><span>⚙️</span><p>Designing &amp; optimizing software applications</p></div>
        <div class="interest-item"><span>🧩</span><p>Systems thinking &amp; analytical problem-solving</p></div>
        <div class="interest-item"><span>📈</span><p>Continuous improvement &amp; performance optimization</p></div>
        <div class="interest-item"><span>🎨</span><p>Interactive &amp; user-centered digital experiences</p></div>
      </div>
    </div>
  </section>

  <section id="contact">
    <div class="container">
      <div class="contact-inner">
        <div class="section-label">Get in touch</div>
        <h2 class="section-title">Let's connect</h2>
        <p style="color:var(--muted)">Open to opportunities, collaborations, or just a friendly chat about tech!</p>
        <div class="contact-cards">
          <a href="mailto:stephenmathew203@gmail.com" class="contact-card">
            <span class="cc-icon">✉️</span>
            <div><div class="cc-label">Email</div><div class="cc-val">stephenmathew203@gmail.com</div></div>
          </a>
          <a href="tel:+37122451360" class="contact-card">
            <span class="cc-icon">📞</span>
            <div><div class="cc-label">Phone</div><div class="cc-val">(+371) 22451360</div></div>
          </a>
          <div class="contact-card" style="cursor:default">
            <span class="cc-icon">📍</span>
            <div><div class="cc-label">Location</div><div class="cc-val">Riga, Latvia</div></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <footer>
    <p>© 2026 Stephen Mathew · Built with passion ✦ Riga, Latvia</p>
  </footer>

</body>
</html>
