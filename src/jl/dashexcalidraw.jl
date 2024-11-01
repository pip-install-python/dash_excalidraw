# AUTO GENERATED FILE - DO NOT EDIT

export dashexcalidraw

"""
    dashexcalidraw(;kwargs...)

A DashExcalidraw component.
DashExcalidraw is a Dash component that wraps the Excalidraw drawing tool.
It provides a customizable canvas for creating diagrams and sketches.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `UIOptions` (Dict; optional): UI options for customizing the Excalidraw interface.
- `appState` (Dict; optional): The current application state of Excalidraw.
- `autoFocus` (Bool; optional): Determines whether to auto-focus the Excalidraw component.
- `detectScroll` (Bool; optional): Determines whether to detect scroll events.
- `elements` (Array; optional): The current elements in the Excalidraw scene.
- `files` (Dict; optional): Files associated with the Excalidraw scene.
- `gridModeEnabled` (Bool; optional): Enables grid mode.
- `handleKeyboardGlobally` (Bool; optional): Determines whether to handle keyboard events globally.
- `height` (String; optional): The height of the Excalidraw component.
- `initialData` (optional): Initial data to load into the Excalidraw component.. initialData has the following type: lists containing elements 'elements', 'appState'.
Those elements have the following types:
  - `elements` (Array; optional)
  - `appState` (Dict; optional)
- `isCollaborating` (Bool; optional): Indicates if the component is in collaboration mode.
- `langCode` (String; optional): The language code for localization.
- `libraryReturnUrl` (String; optional): URL to return to after using the library.
- `name` (String; optional): Name of the drawing.
- `serializedData` (String; optional): Serialized data of the entire Excalidraw scene.
- `theme` (a value equal to: "light", "dark"; optional): The theme of the Excalidraw component.
- `validateEmbeddable` (Bool | Array of Strings | Array; optional): Function or value to validate embeddable content.
- `viewModeEnabled` (Bool; optional): Enables view-only mode.
- `width` (String; optional): The width of the Excalidraw component.
- `zenModeEnabled` (Bool; optional): Enables zen mode.
"""
function dashexcalidraw(; kwargs...)
        available_props = Symbol[:id, :UIOptions, :appState, :autoFocus, :detectScroll, :elements, :files, :gridModeEnabled, :handleKeyboardGlobally, :height, :initialData, :isCollaborating, :langCode, :libraryReturnUrl, :name, :serializedData, :theme, :validateEmbeddable, :viewModeEnabled, :width, :zenModeEnabled]
        wild_props = Symbol[]
        return Component("dashexcalidraw", "DashExcalidraw", "dash_excalidraw", available_props, wild_props; kwargs...)
end

