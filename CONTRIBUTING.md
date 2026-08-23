# Bijdragen

Een bug gevonden of een verbetering in gedachten? Issues en pull requests zijn
welkom.

## Lokaal draaien

De site wordt door nginx geserveerd vanuit een container.

```bash
docker compose up --build
```

De site staat dan op <http://localhost:8080>. `webroot/` is wat er in het image
terechtkomt; `testing/` bevat losse pagina's om componenten uit te proberen en
gaat niet mee in de build.

## Voor je een PR opent

- Bekijk de pagina op desktop **én** mobiel, en let op nieuwe console-fouten.
- De Bootstrap-bestanden worden met de hand bijgewerkt en staan bewust niet
  onder Renovate. Vermeld bij een update waar je het bestand vandaan hebt.

## Commitberichten

Dit project gebruikt [Conventional Commits](https://www.conventionalcommits.org/).

**Vorm:**

```text
<type>: <korte omschrijving>
```

**Types:**

| Type | Wanneer |
| --- | --- |
| `feat` | Nieuwe pagina, sectie of functionaliteit |
| `fix` | Bugfix — kapotte layout, verkeerde configuratie, renderfout |
| `docs` | README, CONTRIBUTING of andere metabestanden |
| `chore` | Onderhoud — dependencies, CI/CD, configuratie |
| `style` | Opmaak, witruimte, typefouten |
| `refactor` | Herstructurering zonder gedragsverandering |
| `content` | Bestaande pagina-inhoud bijwerken of verbeteren |
| `revert` | Een eerdere commit terugdraaien |

**Regels:**

- Type en omschrijving in kleine letters
- Onderwerpregel onder de 72 tekens
- Geen punt aan het eind
- Gebiedende wijs ("add", "fix", "update" — niet "added", "fixed", "updated")

## Pull requests

- PR-titels volgen dezelfde conventie als hierboven. De controle
  "Conventional commit title" kijkt daarop en is verplicht.
- Eén logische wijziging per PR
- Richt de PR op `main`
- De PR-template vult zichzelf deels aan: het vinkje voor de titel en het
  opruimen van de niet-gekozen types gebeurt automatisch.
