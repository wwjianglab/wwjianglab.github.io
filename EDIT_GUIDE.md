# LATM Website — Long-Term Maintenance Manual

> **Current lab name:** Lab of Atomic-Scale Thermophysics and Mechanics (LATM)  
> **PI:** Wenwu Jiang  
> **Institution:** University of Science and Technology of China (USTC)  
> **Website language:** English only  
> **Recommended editor:** VS Code

---

# 0. The only rule you really need to remember

For routine updates, you should normally edit only:

```text
index.html
images/custom/
```

中文说明：日常更新网站时，绝大多数情况下只需要修改 `index.html` 和 `images/custom/`。前者负责文字，后者负责科研图片。

Normally **do not edit**:

```text
css/style.css
css/mobile.css
css/local-fidelity-patch.css
js/slider/
js/skitter/
```

中文说明：这些文件控制参考网站的字体、间距、配色、响应式布局和轮播行为。除非你明确想重新设计网站，否则不要修改。

---

# 1. 30-second quick start

## Before editing

1. Copy the whole website folder as a backup.
2. Rename the backup with the date, for example:

```text
latm-lab_backup_2026-09-06
```

3. Open the **whole folder** in VS Code.
4. Open `index.html`.
5. Press **Ctrl+F** and search for:

```text
EDIT HERE
```

中文说明：我已经在网页源码里放置了 13 个不会显示在网页上的定位标签。以后不要记行号，直接搜索 `EDIT HERE` 即可，因为行号会随着内容增减发生变化。

## Preview after editing

Windows:

```text
Double-click start.bat
```

Linux/macOS:

```bash
bash start.sh
```

Then open or refresh:

```text
http://127.0.0.1:8000/
```

中文说明：不要只依赖直接双击 `index.html` 的效果。使用本地服务器预览更接近真实网站运行环境。

---

# 2. Quick lookup table — “What do I want to change?”

| What you want to change | Search keyword / marker | File to edit | Difficulty |
|---|---|---|---|
| PI name | `Wenwu Jiang` | `index.html` | Easy |
| Lab full name | `Lab of Atomic-Scale Thermophysics and Mechanics` | `index.html` + title images | Easy/Medium |
| Acronym LATM | `LATM` | `index.html` + title images | Easy/Medium |
| University | `University of Science and Technology of China (USTC)` | `index.html` + title images | Easy/Medium |
| Hero subtitle | `EDIT HERE 03` | `index.html` | Easy |
| Introduction bullets | `EDIT HERE 04` | `index.html` | Easy |
| Research description | `EDIT HERE 05` | `index.html` | Easy |
| Research overview image | `research-overview.png` | `images/custom/` | Easy |
| Add/edit publication | `EDIT HERE 06` | `index.html` | Medium |
| Add talk | `EDIT HERE 07` | `index.html` | Easy |
| Add activity | `EDIT HERE 08` | `index.html` | Easy |
| Add member | `EDIT HERE 09` | `index.html` | Medium |
| Add highlight | `EDIT HERE 10` | `index.html` | Easy |
| Add collaboration | `EDIT HERE 11` | `index.html` | Easy |
| Update openings | `EDIT HERE 12` | `index.html` | Easy |
| Update contact | `EDIT HERE 13` | `index.html` | Easy |
| Change slider image | image filename | `images/custom/` | Easy |
| Change slider title/subtitle | exact slider title | `index.html` | Medium |
| Change layout/colors/fonts | CSS files | `css/` | High — avoid unless redesigning |

中文说明：以后如果只是想完成某项具体修改，优先查这张表，不需要从头阅读整份文档。

---

# 3. The 13 editable anchors in `index.html`

## `EDIT HERE 01: PI NAME / SEO`

Purpose:
- Browser tab title
- Page description
- Keywords
- PI name in metadata

Search current PI name:

```text
Wenwu Jiang
```

Recommended method if the PI name changes:

```text
Ctrl+H → Replace All
```

中文说明：姓名在多个位置重复出现，因此更换姓名时建议全局替换，然后再逐个检查。

---

## `EDIT HERE 02: HEADER LOGO IMAGE`

Main file:

```text
images/new-logo.png
```

Current text inside the image:

```text
LATM @ USTC
```

Image size:

```text
514 × 50 px
```

中文说明：这部分文字已经做进 PNG 图片中。修改 `index.html` 不会改变图片里的字。如果将来学校或课题组缩写变化，需要重新制作该图片，最好保持 514 × 50 px。

---

## `EDIT HERE 03: HERO SUBTITLE`

Current text:

```text
Wenwu Jiang Group at the University of Science and Technology of China (USTC)
```

Edit directly in `index.html`.

Large hero title image:

```text
images/new-txt.png
```

Current image text:

```text
LAB OF ATOMIC-SCALE
THERMOPHYSICS AND MECHANICS
( LATM )
```

Image size:

```text
859 × 250 px
```

中文说明：首屏副标题是 HTML 文字，可以直接改；首屏最大标题是图片，需要改图。

---

## `EDIT HERE 04: INTRODUCTION SUMMARY`

This section contains four bullet points immediately below the slider.

Recommended writing structure:

```text
1. What methods do we develop?
2. What thermal-transport problems do we study?
3. What mechanics/friction problems do we study?
4. What is the overall scientific goal?
```

中文说明：这里适合保持 4 条，每条 1 句话，尽量不要写成长段落，否则会破坏当前版式的紧凑感。

---

## `EDIT HERE 05: RESEARCH SECTION`

Current three themes:

```text
(1) Machine-learning interatomic potentials
(2) Thermal transport
(3) Interfacial friction and mechanics
```

Current overview image:

```text
images/custom/research-overview.png
```

Current size:

```text
735 × 337 px
```

中文说明：Research 建议长期保持 3–4 个主方向，不要把每个具体课题都做成一级方向。具体体系、材料和项目可以写进对应段落中。

Recommended long-term structure:

```text
Research 1 — Methodology
Machine-learning interatomic potentials / atomistic modeling

Research 2 — Thermal physics
Phonons / thermal transport / interfaces / moiré systems

Research 3 — Mechanics
Friction / sliding / reconstruction / interfacial bonding
```

---

## `EDIT HERE 06: PUBLICATIONS SECTION`

This will probably be the section you edit most often.

### Best practice

For each selected paper, show:

```text
Paper title
Authors
Journal + year + DOI/link
First-published date
Graphical abstract / representative figure
Short highlight paragraph
```

中文说明：建议这里放“代表性论文”，而不是把所有论文全部塞进首页。完整论文列表以后可以单独增加一个 Publications 页面。

### How to add one new paper

1. Search:

```text
EDIT HERE 06
```

2. Find one complete publication block beginning with:

```html
<li>
```

and ending with:

```html
</li>
```

3. Copy the whole block.
4. Paste it directly after another publication block.
5. Replace only the following fields:

```text
Title
Authors
Journal
Year
DOI / URL
Date
Image path
Highlight paragraph
```

### Safe publication template

```html
<li>
  <div class="title">YOUR PAPER TITLE</div>

  <div class="remark">
    Author A, Author B, <b>Wenwu Jiang</b>*

    <div style="margin:5px 0;">
      <a href="YOUR_DOI_OR_URL" target="_blank">
        <b>JOURNAL</b> YEAR, VOLUME, PAGE/ARTICLE NUMBER
      </a>
    </div>

    <span style="font-size:16px;color:#636262;">
      First Published: DD Month YYYY
    </span>
  </div>

  <div class="content">
    <div class="pic">
      <img src="images/custom/YOUR_IMAGE.jpg" alt="YOUR PAPER TITLE"/>
    </div>

    <div class="cn">
      <p>
        YOUR SHORT RESEARCH HIGHLIGHT.
      </p>
    </div>
  </div>
</li>
```

中文说明：复制模板时不要删掉 `<div>`、`<li>`、`</li>` 等标签，只替换大写占位文字最安全。

### Recommended image naming

Use short English filenames:

```text
2026_inse_thermal_transport.jpg
2026_moire_mos2.jpg
2027_quartz_friction.jpg
```

Avoid:

```text
最终图最新版2真的最终版.jpg
Figure 1 new new.jpg
```

中文说明：长期维护时建议使用“年份_主题”的英文文件名，避免中文、空格以及版本号混乱。

---

# 4. Slider maintenance — important because desktop and mobile are separate

Current slider images:

```text
images/custom/ml-potentials.jpg
images/custom/thermal-transport.jpg
images/custom/interfacial-friction.jpg
```

Current dimensions:

```text
1170 × 461 px
```

Recommended: keep exactly this size for new slider images.

中文说明：轮播图最好统一为 1170 × 461 px，否则虽然 CSS 会缩放，但裁剪和标题位置可能与当前参考网站不一致。

## Important: slider text exists twice

The page contains two slider templates:

```text
slider_tmep1   → desktop
slider_tmep2   → mobile / alternative slider
```

Therefore, when changing a slider **title or subtitle**, search the exact old title and replace **all occurrences**.

Example:

```text
Machine-Learning Interatomic Potentials
```

Use:

```text
Ctrl+H → Replace All
```

中文说明：这是长期维护时最容易漏掉的一点。轮播标题在桌面和移动端模板里各有一份，最好全局替换，而不是只改第一处。

## Easiest way to replace only an image

If you do not want to touch HTML:

1. Prepare a new image at `1170 × 461 px`.
2. Rename it exactly as one existing image, for example:

```text
thermal-transport.jpg
```

3. Replace:

```text
images/custom/thermal-transport.jpg
```

4. Refresh the page.

中文说明：只换图片时，用同名文件直接覆盖是最安全的方法，不会影响轮播代码。

---

# 5. Members — recommended long-term structure

Search:

```text
EDIT HERE 09
```

Recommended order:

```text
Principal Investigator
Postdoctoral Researchers
Ph.D. Students
Master Students
Undergraduate Students
Visitors
Alumni
```

中文说明：建议人员按身份分类，而不是简单按加入时间排列。以后成员多起来后会更容易维护。

## Simple member template

```html
<div class="tb_sub">
  <div class="tb_subtitle">
    <span>Ph.D. Students</span>
  </div>

  <div class="itext">
    <p><b>Student Name</b> — Ph.D. Student</p>
    <p>Research: thermal transport in low-dimensional materials.</p>
    <p>E-mail: student@xxx.edu</p>
  </div>
</div>
```

中文说明：如果暂时不想增加成员照片，这个纯文字模板最稳妥，也不会改变现有页面整体布局。后续确定成员版式后再统一加入照片即可。

---

# 6. Talks, Activities, Highlights, Collaborations

These are low-risk sections because they mainly contain text.

## Talks

Search:

```text
EDIT HERE 07
```

Recommended format:

```text
2027 — Talk title, Conference / Institution, City, Country.
```

中文说明：建议按年份倒序排列，最新报告放最上面。

## Activities

Search:

```text
EDIT HERE 08
```

Recommended content:

```text
Conference attendance
Group seminar
Academic visit
Workshop
Group photo
```

中文说明：活动信息最好配照片，但图片不要直接散落在网站根目录，建议统一放到 `images/custom/activities/`。

## Highlights

Search:

```text
EDIT HERE 10
```

Good candidates:

```text
Major paper accepted
Award
Software release
Open-source code
Research milestone
Invited keynote
```

中文说明：Highlights 适合放“值得被快速看到”的内容，不要与 Publications 完全重复。

## Collaborations

Search:

```text
EDIT HERE 11
```

中文说明：可以写合作方向，也可以以后增加合作 PI、学校和 Logo。没有确认的信息不要提前写死。

---

# 7. Openings and Contact

## Openings

Search:

```text
EDIT HERE 12
```

Recommended structure:

```text
Who we are looking for
Research topics
Required background
Available positions
How to apply
Contact e-mail
```

中文说明：以后正式招生时，建议明确写博士/硕士/博士后，而不是只写“students are welcome”。

## Contact

Search:

```text
EDIT HERE 13
```

Update:

```text
PI name
Lab name
University
School / Department
Office / Address
City
E-mail
```

Current placeholder:

```text
E-mail: To be updated
```

Important: the contact information appears again in the footer.

Therefore, when the e-mail or address becomes final, use:

```text
Ctrl+H → Replace All
```

中文说明：联系方式在 Contact 区域和页面底部各出现一次，建议全局替换，避免只改了一处。

---

# 8. Lab name and institution changes

## Current lab name

Search:

```text
Lab of Atomic-Scale Thermophysics and Mechanics
```

## Current acronym

Search:

```text
LATM
```

## Current institution

Search:

```text
University of Science and Technology of China (USTC)
```

Then separately search:

```text
USTC
```

Also check:

```text
https://en.ustc.edu.cn/
```

中文说明：如果未来换学校，不能只替换完整校名，还要单独检查所有 `USTC` 缩写和学校官网链接。

## Images that also contain lab/institution text

```text
images/new-logo.png   514 × 50 px
images/new-txt.png    859 × 250 px
images/logo1.jpg      133 × 87 px
images/fff4.png       514 × 63 px
```

中文说明：这四个文件中的文字是图片内容，无法通过 Ctrl+H 修改。换学校或换课题组名称时需要重新生成图片。

---

# 9. Image management rules

## Current key image sizes

| File | Current size | Purpose |
|---|---:|---|
| `images/new-logo.png` | 514 × 50 | Top logo text |
| `images/new-txt.png` | 859 × 250 | Hero title |
| `images/logo1.jpg` | 133 × 87 | Header mark |
| `images/fff4.png` | 514 × 63 | Header lab text |
| `images/custom/research-overview.png` | 735 × 337 | Research overview |
| `images/custom/ml-potentials.jpg` | 1170 × 461 | Slider/research image |
| `images/custom/thermal-transport.jpg` | 1170 × 461 | Slider/research image |
| `images/custom/interfacial-friction.jpg` | 1170 × 461 | Slider/research image |

中文说明：如果只是替换图片，尽量保持原始像素尺寸和长宽比，可以最大程度保证页面不变形。

## Recommended folder structure for future images

```text
images/custom/
├── slider/
├── publications/
├── members/
├── activities/
└── research/
```

中文说明：当前网站可以继续使用现有路径。如果未来图片越来越多，建议逐步按用途分类，但移动文件后必须同步修改 `index.html` 中的路径。

---

# 10. What not to do

Avoid these common mistakes:

### Do not edit HTML with Microsoft Word

中文说明：Word 会自动加入格式信息，容易破坏 HTML。使用 VS Code、Notepad++ 等纯文本编辑器。

### Do not rename CSS/JS files casually

中文说明：文件名与 HTML 中的引用一一对应，随意改名可能导致页面样式或轮播失效。

### Do not delete closing tags unless you know HTML

Examples:

```html
</div>
</li>
</ul>
```

中文说明：增加论文和成员时最容易误删结束标签。如果网页突然大面积错位，优先检查最近修改处是否少了结束标签。

### Do not use spaces or Chinese characters in new image filenames

Recommended:

```text
2027_moire_thermal_transport.jpg
```

Not recommended:

```text
2027 莫尔热输运 最终版.jpg
```

中文说明：英文小写、数字、下划线最稳妥，服务器兼容性最好。

---

# 11. Safe update workflow for every future edit

Use this exact sequence:

```text
1. Backup
2. Edit
3. Save
4. Start local server
5. Check desktop view
6. Check mobile view
7. Click links
8. Check images
9. Only then upload to server
```

中文说明：不要直接在服务器正式版本上试错。先在本地修改和检查，再上传正式站点。

## Minimum visual check

Desktop:

```text
1920 × 1080 browser window
```

Mobile:

```text
Chrome DevTools → Toggle Device Toolbar
```

Check at least:

```text
Hero
Navigation
Slider
Research
Publications
Members
Contact
```

中文说明：新增内容后尤其要检查 Publications，因为标题或摘要过长最容易改变页面高度和视觉密度。

---

# 12. Recommended backup/version naming

Instead of filenames such as:

```text
final.zip
final2.zip
final_really.zip
```

use:

```text
latm-lab_2026-09-06.zip
latm-lab_2026-10-18_publications.zip
latm-lab_2027-01-05_members.zip
```

中文说明：使用“日期 + 修改内容”的方式最适合长期维护，几年后仍然能知道每个版本做了什么。

---

# 13. Optional: use Git when the website becomes important

If you later maintain the website frequently, consider using Git.

Basic idea:

```text
git init
git add .
git commit -m "Initial LATM website"
```

Then each update can have a clear history:

```text
Update publications
Add new members
Update USTC affiliation
Revise research section
```

中文说明：目前不是必须使用 Git，但当论文、成员和新闻越来越多时，Git 会比手工保存很多 ZIP 更可靠。

---

# 14. Long-term content strategy

To keep the homepage clean, use the following principle:

## Homepage

Only show:

```text
3–4 research directions
3–6 selected publications
recent talks/activities
current members
current openings
contact information
```

中文说明：首页应该展示“最重要的内容”，而不是承担数据库功能。

## Later, when content grows

Consider adding separate pages:

```text
publications.html
people.html
news.html
```

中文说明：当论文超过约 10–15 篇、成员超过约 10 人或活动较多时，再拆分独立页面更合适。当前阶段没有必要提前复杂化。

---

# 15. Emergency troubleshooting

## Problem: page layout suddenly breaks

First check the most recent edited block for missing:

```html
</div>
</li>
</ul>
```

## Problem: image does not appear

Check:

```text
filename spelling
file extension (.jpg/.png)
relative path
uppercase/lowercase
```

## Problem: slider desktop changed but mobile did not

Search the slider title and verify both:

```text
slider_tmep1
slider_tmep2
```

## Problem: school name changed but old USTC still appears

Search all:

```text
USTC
```

and remember that some occurrences are inside PNG/JPG images.

## Problem: edits do not appear

Try:

```text
Ctrl+F5
```

中文说明：浏览器可能缓存旧的 CSS 或图片，Ctrl+F5 可以强制刷新。

---

# 16. Most common future tasks — one-line answers

**I want to change the PI name.**  
Search `Wenwu Jiang` → Replace All.

**I want to change the university.**  
Replace full institution name → search `USTC` → update school URL → regenerate title images if necessary.

**I want to add a paper.**  
Search `EDIT HERE 06` → copy one complete `<li>...</li>` publication block → replace content.

**I want to add a student.**  
Search `EDIT HERE 09` → copy/add a member block under the correct category.

**I want to change the Research image.**  
Replace `images/custom/research-overview.png`.

**I want to change a slider image only.**  
Use a new 1170 × 461 image and overwrite the existing file with the same filename.

**I want to change a slider title.**  
Use Ctrl+H so both desktop and mobile slider templates are updated.

**I want to change colors/fonts/layout.**  
Do not do this as a routine content update; back up first, then edit CSS deliberately.

---

# 17. Files you should know

```text
latm-lab/
│
├── index.html                 ← main content; edit most often
├── EDIT_GUIDE.md              ← this maintenance manual
├── README.md                  ← basic project description
├── start.bat                  ← Windows local preview
├── start.sh                   ← Linux/macOS local preview
│
├── images/
│   ├── new-logo.png           ← LATM @ USTC
│   ├── new-txt.png            ← large hero title
│   ├── logo1.jpg              ← header graphic
│   ├── fff4.png               ← header lab-name graphic
│   └── custom/                ← your scientific images
│
├── css/                       ← do not edit for routine updates
└── js/                        ← do not edit for routine updates
```

中文说明：如果以后忘记网站结构，只需要看这一节即可。

---

# Final maintenance principle

For normal updates:

```text
TEXT  → index.html
IMAGES → images/custom/
STYLE  → leave CSS unchanged
SLIDER → remember desktop + mobile templates
BACKUP → always before editing
```

中文说明：长期维护网站时，只要坚持“文字改 index.html、科研图放 images/custom、CSS 不乱动、轮播记得桌面和移动端两份、修改前先备份”，基本不会把网站改坏。
