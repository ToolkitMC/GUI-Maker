<h1>🧩 GUI Maker – Global Fork (Minecraft Java Edition)</h1>

<p>
<strong>✔ Minecraft 1.21.5+ Supported</strong>
</p>

<p>
This repository is a global fork of the original <b>Minecart GUI Maker</b> datapack.  
It is maintained to provide stability improvements, global usability, and potential feature extensions while keeping compatibility with the original system design.
</p>

<hr>

<h2>📦 Requirements</h2>

<ul>
<li>Minecraft Java Edition 1.21.5 or newer</li>
<li>Required Resource Pack (provided by original project source)</li>
</ul>

<hr>

<h2>🌍 Project Overview</h2>

<p>
Minecart GUI Maker is a datapack-based GUI creation toolkit designed for Minecraft mapmakers.  
It allows creators to build fully functional Inventory-based GUI systems directly inside their worlds without mods.
</p>

<p>
The system uses storage-driven architecture and macro execution to dynamically load GUI layouts, button logic, and navigation data.
</p>

<hr>

<h2>✨ Key Features</h2>

<h3>📑 Multi-GUI System</h3>
<ul>
<li>Create and manage multiple GUI systems in a single world</li>
<li>Built-in page navigation support</li>
<li>Profile-based GUI organization</li>
</ul>

<h3>👥 Multiplayer-Friendly Design</h3>
<ul>
<li>Interaction entity protection system</li>
<li>Reduces accidental GUI interaction by other players</li>
<li>Maintains intended player experience</li>
</ul>

<h3>⚡ Performance-Oriented Architecture</h3>
<ul>
<li>Storage merge-based click detection</li>
<li>Minimal idle performance impact</li>
<li>Processing only occurs during real interaction events</li>
</ul>

<hr>

<h2>⚙️ Core System Architecture</h2>

<h3>GUI Profile</h3>

<p>
Each GUI is initialized with a profile containing:
</p>

<ul>
<li>GUI Name</li>
<li>GUI ID (Primary Identifier)</li>
<li>Original Author / Owner</li>
</ul>

<p>
GUI ID is required when summoning or referencing a GUI instance.
</p>

<hr>

<h3>Page Database Structure</h3>

<pre>
PAGES[
  {
    page_name:'[{"text":"PAGE NAME"}]',
    page_number:&lt;number&gt;,
    layout:[{},{},{},...]
  }
]
</pre>

<p>
Each GUI stores its pages inside a structured page list database.
</p>

<hr>

<h2>🖱️ Click Detection System</h2>

<p>
Click detection is based on storage merge success logic:
</p>

<ul>
<li>Merge Result = 0 → No click detected</li>
<li>Merge Success → Click detected</li>
</ul>

<p>
Clicked items are calculated by comparing new and old storage datasets.
</p>

<p>
This allows near-zero performance cost during idle state.
</p>

<hr>

<h2>📘 Basic Usage</h2>

<h3>1️⃣ Create GUI Profile</h3>

<pre>
/trigger gm-createGUIprofile
</pre>

<p>
After creation you can configure:
</p>

<ul>
<li>GUI Name</li>
<li>GUI ID</li>
</ul>

<hr>

<h3>2️⃣ Add GUI Page</h3>

<pre>
/trigger gm-addPage
</pre>

<p>
Steps:
</p>

<ul>
<li>Create layout inside a container block</li>
<li>Stand on the container</li>
<li>Select GUI from menu</li>
</ul>

<hr>

<h3>3️⃣ Edit GUI Page</h3>

<pre>
/trigger gm-editPage
</pre>

<p>
Then:
</p>

<ul>
<li>Select target GUI</li>
<li>Select target page</li>
<li>Edit items inside spawned CHEST_MINECART GUI</li>
</ul>

<hr>

<h2>🧩 Item Configuration Example</h2>

<pre>
/function namespace:path {
 run:"function namespace:file",
 item_modifier:"namespace:modifier",
 change_gui:"gui_id",
 change_page:"page_index",
 slot:"DO NOT CHANGE",
 gui_id:"DO NOT CHANGE",
 page:DO NOT CHANGE,
 sound:"x.x.x"
}
</pre>

<p>
<b>Warning:</b> The last three arguments must never be modified.
</p>

<hr>

<h2>📜 License</h2>

<p>
This fork follows the MIT License permissions inherited from the original project.
</p>

<ul>
<li>You may modify this fork</li>
<li>You may distribute modified versions</li>
<li>You must NOT redistribute the original datapack without modification</li>
</ul>

<hr>

<h2>🚧 Future Roadmap</h2>

<ul>
<li>Player item input support</li>
<li>Command support</li>
<li>Function Files (data/gui.maker/tags/function/run.json) support</li>
</ul>

<hr>

<h2>🙏 Credits</h2>

<ul>
<li>Original Minecart GUI Maker Author</li>
<li>Fork Maintainers</li>
<li>Community Contributors</li>
</ul>

<hr>

<p align="center">
<b>Build smarter GUIs. Scale globally. 🎮</b>
</p>
