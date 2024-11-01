# Dash Excalidraw

[![PyPI version](https://badge.fury.io/py/dash-excalidraw.svg)](https://badge.fury.io/py/dash-excalidraw)
[![Downloads](https://pepy.tech/badge/dash-excalidraw)](https://pepy.tech/project/dash-excalidraw)

A Dash component that wraps the powerful Excalidraw drawing and diagramming tool, providing a customizable canvas for creating beautiful hand-drawn like diagrams, wireframes, and sketches directly in your Dash applications.

## Docs
https://pip-install-python.com/pip/dash_excalidraw

## Full Tutorial Video on YouTube

[![Dash Excalidraw Demo](assets/how_to_create_custom_components_thumbnail.jpg)](https://www.youtube.com/watch?v=qh4Lg1X_k1A&t)

## Features

The Dash Excalidraw component inherits all the powerful features of the Excalidraw editor:

- Free & open-source
- Infinite, canvas-based whiteboard
- Hand-drawn like style
- Dark mode support
- Highly customizable
- Image support
- Shape libraries support
- Localization (i18n) support
- Export to PNG, SVG & clipboard
- Open format - export drawings as `.excalidraw` JSON file
- Rich toolset - rectangle, circle, diamond, arrow, line, free-draw, eraser & more
- Arrow-binding & labeled arrows
- Undo / Redo support
- Zoom and panning support
- And many more...

## Installation

```bash
pip install dash-excalidraw
```

## Quick Start

Here's a simple example to get you started:

```python
import dash_excalidraw
from dash import Dash, html
import dash_mantine_components as dmc

app = Dash(__name__)

app.layout = dmc.MantineProvider([
    dmc.Container([
        dmc.Title("Dash Excalidraw Demo", order=1),
        dash_excalidraw.DashExcalidraw(
            id='excalidraw',
            width='100%',
            height='600px',
            initialData={"elements": [], "appState": {}},
            theme="light"
        )
    ])
])

if __name__ == '__main__':
    app.run_server(debug=True)
```

## Props & Options

| Option | Default | Type | Description |
|--------|---------|------|-------------|
| `id` | `None` | string | The ID used to identify this component in Dash callbacks |
| `width` | `'100%'` | string | The width of the Excalidraw component |
| `height` | `'400px'` | string | The height of the Excalidraw component |
| `initialData` | `{ elements: [], appState: {} }` | object | Initial data to load into the component |
| `theme` | `'light'` | `'light'` \| `'dark'` | The theme of the component |
| `viewModeEnabled` | `false` | boolean | Enables view-only mode |
| `zenModeEnabled` | `false` | boolean | Enables zen mode |
| `gridModeEnabled` | `false` | boolean | Enables grid mode |
| `isCollaborating` | `false` | boolean | Indicates if the component is in collaboration mode |

[View full props documentation](#props-documentation)

## Callback Example

```python
from dash import callback, Input, Output
import json

@callback(
    Output('output', 'children'),
    Input('excalidraw', 'serializedData'),
)
def display_output(serializedData):
    if not serializedData:
        return 'No elements drawn yet'
    
    data = json.loads(serializedData)
    return f'Number of elements: {len(data["elements"])}'
```

## Props Documentation

### Core Props

<details>
<summary>Click to expand</summary>

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `id` | string | None | Component identifier |
| `width` | string | '100%' | Component width |
| `height` | string | '400px' | Component height |
| `initialData` | object | `{ elements: [], appState: {} }` | Initial scene data |
| `elements` | array | `[]` | Current scene elements |
| `appState` | object | `{}` | Application state |
| `files` | object | `{}` | Associated files |
| `serializedData` | string | `''` | Serialized scene data |

</details>

### Interactive Features

<details>
<summary>Click to expand</summary>

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `excalidrawAPI` | function | null | Access Excalidraw API |
| `onPointerUpdate` | function | null | Pointer update callback |
| `onPointerDown` | function | null | Pointer down callback |
| `onScrollChange` | function | null | Scroll change callback |
| `onPaste` | function | null | Paste event callback |
| `onLibraryChange` | function | null | Library change callback |
| `onLinkOpen` | function | null | Link open callback |

</details>

### UI Customization

<details>
<summary>Click to expand</summary>

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `theme` | string | 'light' | UI theme |
| `langCode` | string | 'en' | Localization code |
| `renderTopRightUI` | function | null | Custom top-right UI |
| `renderCustomStats` | function | null | Custom stats display |
| `UIOptions` | object | `{}` | UI customization options |

</details>

## Advanced Example

```python
import dash_excalidraw
from dash import Dash, html, callback, Input, Output
import dash_mantine_components as dmc
import json

app = Dash(__name__)

app.layout = dmc.MantineProvider([
    dmc.Container([
        dmc.Title("Dash Excalidraw Demo", order=1, align="center", mb="lg"),
        dash_excalidraw.DashExcalidraw(
            id='excalidraw',
            width='100%',
            height='600px',
            initialData={
                "elements": [], 
                "appState": {
                    "viewBackgroundColor": "#ffffff",
                    "gridSize": 20
                }
            },
            theme="light",
            viewModeEnabled=False,
            zenModeEnabled=False,
            gridModeEnabled=True
        ),
        html.Div(id='output')
    ], size="xl", pt="md")
], withGlobalStyles=True)

@callback(
    Output('output', 'children'),
    Input('excalidraw', 'serializedData')
)
def display_output(serializedData):
    if not serializedData:
        return 'No elements drawn yet'
    
    data = json.loads(serializedData)
    return f'Number of elements: {len(data["elements"])}'

if __name__ == '__main__':
    app.run_server(debug=True)
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Built on top of the amazing [Excalidraw](https://github.com/excalidraw/excalidraw) library
- Developed for use with [Plotly Dash](https://dash.plotly.com/)