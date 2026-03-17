function arrayToUnorderedList(items) {
  const ul = document.createElement('ul');
  items.forEach(item => {
    const li = document.createElement('li');
    const code = document.createElement('code');
    code.textContent = item;
    li.appendChild(code);
    ul.appendChild(li);
  });
  return ul;
}

const list_battles_container = document.querySelector('.list-battles');
if (list_battles_container) {
  fetch('challenges-images/manifest.json')
    .then(resp => resp.json())
    .then(battles => {
      // Group battles by category, preserving insertion order
      const grouped = {};
      battles.forEach(battle => {
        const cat = Array.isArray(battle.category) ? battle.category[0] : (battle.category || 'Uncategorised');
        if (!grouped[cat]) grouped[cat] = [];
        grouped[cat].push(battle);
      });

      list_battles_container.innerHTML = Object.entries(grouped)
        .sort(([a], [b]) => a.localeCompare(b))
        .map(([category, items]) => `
        <div class="battle-category-section">
          <h5 class="battle-category-header">${category}</h5>
          <div class="battle-grid">
            ${items.map(battle => `
              <div class="battle-item">
                <h5 class="battle-title">${marked.parseInline(Array.isArray(battle.title) ? battle.title[0] : battle.title)}</h5>
                <a href="challenges/${battle.name}/" class="battle-link" title="${battle.title}">
                  <img src="challenges-images/${battle.image}" alt="${battle.title}" class="battle-thumbnail">
                </a>
              </div>
            `).join('')}
          </div>
        </div>
      `).join('');
    });
}

