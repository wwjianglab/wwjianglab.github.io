"""Build lightweight website images without changing the source artwork.

Run from the repository root with Python and Pillow installed.
"""

from pathlib import Path
from PIL import Image
import base64
import io
import re
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
ASSETS = ROOT / "images/custom"


def webp(source, destination, max_width=None, quality=90, lossless=False):
    with Image.open(ROOT / source) as image:
        image.load()
        if max_width and image.width > max_width:
            image = image.resize(
                (max_width, round(image.height * max_width / image.width)),
                Image.Resampling.LANCZOS,
            )
        image.save(ROOT / destination, "WEBP", quality=quality,
                   lossless=lossless, method=6)
        print(f"{destination}: {image.width} x {image.height}, "
              f"{(ROOT / destination).stat().st_size:,} bytes")


# Render the existing SVG's embedded raster at the same coordinates. This
# preserves the grey margins and the character's position without downloading
# a multi-megabyte base64 SVG as the page background.
svg = ET.parse(ROOT / "images/new-banner-enhanced.svg").getroot()
_, _, view_width, view_height = map(float, svg.attrib["viewBox"].split())
node = svg.find("{http://www.w3.org/2000/svg}image")
payload = node.attrib["{http://www.w3.org/1999/xlink}href"].split(",", 1)[1]
source = Image.open(io.BytesIO(base64.b64decode(payload))).convert("RGBA")
transform = re.fullmatch(
    r"translate\(([-\d.]+) ([-\d.]+)\) scale\(([-\d.]+)\)",
    node.attrib["transform"],
)
if transform is None:
    raise ValueError("Unsupported banner transform; preserve the SVG layout")
tx, ty, scale = map(float, transform.groups())
background = svg.find("{http://www.w3.org/2000/svg}rect")
fill = background.attrib.get("fill", "#606060")

for name, width in [("hero-desktop.webp", 1672)]:
    height = round(width * view_height / view_width)
    ratio = width / view_width
    image = source.resize(
        (round(float(node.attrib["width"]) * scale * ratio),
         round(float(node.attrib["height"]) * scale * ratio)),
        Image.Resampling.LANCZOS,
    )
    canvas = Image.new("RGB", (width, height), fill)
    canvas.paste(image, (round(tx * ratio), round(ty * ratio)), image)
    canvas.save(ASSETS / name, "WEBP", quality=90, method=6)
    print(f"images/custom/{name}: {width} x {height}, "
          f"{(ASSETS / name).stat().st_size:,} bytes")

webp("images/new-tu.png", "images/custom/hero-emblem.webp", max_width=540)
webp("images/new-txt.png", "images/custom/hero-title.webp", lossless=True)
webp("images/custom/research-overview.png", "images/custom/research-overview.webp")
webp("images/custom/research-overview.png", "images/custom/research-overview-mobile.webp",
     max_width=960)
webp("images/custom/group-activities-molten-core.png",
     "images/custom/group-activities-molten-core.webp", max_width=420)
webp("images/custom/collaboration-azeroth.png",
     "images/custom/collaboration-azeroth.webp", max_width=420)
webp("images/people/wenwu-jiang.jpg", "images/people/wenwu-jiang.webp", max_width=480)
