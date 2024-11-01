import dash_excalidraw
from dash import Dash, html, dcc, callback, Input, Output, State, _dash_renderer
import json
import dash_mantine_components as dmc
from dash_ace import DashAceEditor

_dash_renderer._set_react_version("18.2.0")

class CustomJSONDecoder(json.JSONDecoder):
    def decode(self, s):
        result = super().decode(s)
        return self._decode(result)

    def _decode(self, o):
        if isinstance(o, bool):
            return o
        if isinstance(o, dict):
            return {k: self._decode(v) for k, v in o.items()}
        if isinstance(o, list):
            return [self._decode(v) for v in o]
        if o == "true":
            return True
        if o == "false":
            return False
        if o == "null":
            return None
        return o


def custom_pprint(obj, indent=2):
    def format_value(v):
        if isinstance(v, (dict, list)):
            return custom_pprint(v, indent)
        elif v is True:
            return 'True'
        elif v is False:
            return 'False'
        elif v is None:
            return 'None'
        else:
            return repr(v)

    if isinstance(obj, dict):
        items = [f"{' ' * indent}{repr(k)}: {format_value(v)}" for k, v in obj.items()]
        return "{\n" + ",\n".join(items) + "\n}"
    elif isinstance(obj, list):
        items = [f"{' ' * indent}{format_value(v)}" for v in obj]
        return "[\n" + ",\n".join(items) + "\n]"
    else:
        return repr(obj)


app = Dash(__name__)

initialCanvasData = {}

app.layout = dmc.MantineProvider([
dmc.Tabs(
    [
        dmc.TabsList(
            [
                dmc.TabsTab(
                    "Dash Excalidraw",
                    # leftSection=DashIconify(icon="tabler:message"),
                    value="dashecalidraw-component",
                    style={'font-size': '1.5rem'}
                ),
                dmc.TabsTab(
                    "DashExcalidraw .json Output",
                    # leftSection=DashIconify(icon="tabler:settings"),
                    value="canvas-output",
                    style={'font-size': '1.5rem'}
                ),
            ]
        ),
        dmc.TabsPanel(dash_excalidraw.DashExcalidraw(
        id='excalidraw',
        width='100vw',
        height='90vh',
        initialData=initialCanvasData,
        # validateEmbeddable=False,
        # isCollaborating=False,
    ), value="dashecalidraw-component"),
        dmc.TabsPanel(html.Div([
            html.Div(id='number-of-elements'),
            html.Div(id='output')
        ]), value="canvas-output"),
    ],
    value="dashecalidraw-component",
),
    # dcc.Interval(id='interval', interval=1000)
], forceColorScheme="dark"
)


@callback(
    Output('output', 'children'),
    Output('number-of-elements', 'children'),
    Input('excalidraw', 'serializedData'),
)
def display_output(serializedData):
    if not serializedData:
        return 'No elements drawn yet'

    # Parse the serialized data with custom decoder
    data = json.loads(serializedData, cls=CustomJSONDecoder)

    # Count the number of elements
    num_elements = len(data.get('elements', []))

    # Use custom pretty-print function
    output = custom_pprint(data, indent=2)



    # Add a key to force re-rendering
    return DashAceEditor(
        id='dash-ace-editor',
        value=f'{output}',
        theme='monokai',
        mode='python',
        tabSize=2,
        enableBasicAutocompletion=True,
        enableLiveAutocompletion=True,
        autocompleter='/autocompleter?prefix=',
        placeholder='Python code ...',
        style={'height': '500px', 'width': '80vw'}
    ),  html.Label(f"Number of elements: {num_elements}")


if __name__ == '__main__':
    app.run_server(debug=True, port=8023)