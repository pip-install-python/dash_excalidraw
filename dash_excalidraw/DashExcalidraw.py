# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class DashExcalidraw(Component):
    """A DashExcalidraw component.
DashExcalidraw is a Dash component that wraps the Excalidraw drawing tool.
It provides a customizable canvas for creating diagrams and sketches.

Keyword arguments:

- id (string; optional):
    The ID used to identify this component in Dash callbacks.

- UIOptions (dict; optional):
    UI options for customizing the Excalidraw interface.

- appState (dict; optional):
    The current application state of Excalidraw.

- autoFocus (boolean; default True):
    Determines whether to auto-focus the Excalidraw component.

- detectScroll (boolean; default True):
    Determines whether to detect scroll events.

- elements (list; optional):
    The current elements in the Excalidraw scene.

- files (dict; optional):
    Files associated with the Excalidraw scene.

- gridModeEnabled (boolean; default False):
    Enables grid mode.

- handleKeyboardGlobally (boolean; default True):
    Determines whether to handle keyboard events globally.

- height (string; default '400px'):
    The height of the Excalidraw component.

- initialData (dict; default { elements: [], appState: {} }):
    Initial data to load into the Excalidraw component.

    `initialData` is a dict with keys:

    - appState (dict; optional)

    - elements (list; optional)

- isCollaborating (boolean; default True):
    Indicates if the component is in collaboration mode.

- langCode (string; optional):
    The language code for localization.

- libraryReturnUrl (string; optional):
    URL to return to after using the library.

- name (string; optional):
    Name of the drawing.

- serializedData (string; optional):
    Serialized data of the entire Excalidraw scene.

- theme (a value equal to: "light", "dark"; default "light"):
    The theme of the Excalidraw component.

- validateEmbeddable (boolean | list of strings | list; optional):
    Function or value to validate embeddable content.

- viewModeEnabled (boolean; default False):
    Enables view-only mode.

- width (string; default '100%'):
    The width of the Excalidraw component.

- zenModeEnabled (boolean; default False):
    Enables zen mode."""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'dash_excalidraw'
    _type = 'DashExcalidraw'
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, width=Component.UNDEFINED, height=Component.UNDEFINED, initialData=Component.UNDEFINED, elements=Component.UNDEFINED, appState=Component.UNDEFINED, files=Component.UNDEFINED, serializedData=Component.UNDEFINED, excalidrawAPI=Component.UNDEFINED, isCollaborating=Component.UNDEFINED, onPointerUpdate=Component.UNDEFINED, onPointerDown=Component.UNDEFINED, onScrollChange=Component.UNDEFINED, onPaste=Component.UNDEFINED, onLibraryChange=Component.UNDEFINED, onLinkOpen=Component.UNDEFINED, langCode=Component.UNDEFINED, renderTopRightUI=Component.UNDEFINED, renderCustomStats=Component.UNDEFINED, viewModeEnabled=Component.UNDEFINED, zenModeEnabled=Component.UNDEFINED, gridModeEnabled=Component.UNDEFINED, libraryReturnUrl=Component.UNDEFINED, theme=Component.UNDEFINED, name=Component.UNDEFINED, UIOptions=Component.UNDEFINED, detectScroll=Component.UNDEFINED, handleKeyboardGlobally=Component.UNDEFINED, autoFocus=Component.UNDEFINED, generateIdForFile=Component.UNDEFINED, validateEmbeddable=Component.UNDEFINED, renderEmbeddable=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'UIOptions', 'appState', 'autoFocus', 'detectScroll', 'elements', 'files', 'gridModeEnabled', 'handleKeyboardGlobally', 'height', 'initialData', 'isCollaborating', 'langCode', 'libraryReturnUrl', 'name', 'serializedData', 'theme', 'validateEmbeddable', 'viewModeEnabled', 'width', 'zenModeEnabled']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'UIOptions', 'appState', 'autoFocus', 'detectScroll', 'elements', 'files', 'gridModeEnabled', 'handleKeyboardGlobally', 'height', 'initialData', 'isCollaborating', 'langCode', 'libraryReturnUrl', 'name', 'serializedData', 'theme', 'validateEmbeddable', 'viewModeEnabled', 'width', 'zenModeEnabled']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args}

        super(DashExcalidraw, self).__init__(**args)
