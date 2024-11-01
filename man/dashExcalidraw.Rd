% Auto-generated: do not edit by hand
\name{dashExcalidraw}

\alias{dashExcalidraw}

\title{DashExcalidraw component}

\description{
DashExcalidraw is a Dash component that wraps the Excalidraw drawing tool. It provides a customizable canvas for creating diagrams and sketches.
}

\usage{
dashExcalidraw(id=NULL, UIOptions=NULL, appState=NULL, autoFocus=NULL,
detectScroll=NULL, elements=NULL, excalidrawAPI=NULL,
files=NULL, generateIdForFile=NULL, gridModeEnabled=NULL,
handleKeyboardGlobally=NULL, height=NULL, initialData=NULL,
isCollaborating=NULL, langCode=NULL, libraryReturnUrl=NULL,
name=NULL, onLibraryChange=NULL, onLinkOpen=NULL,
onPaste=NULL, onPointerDown=NULL, onPointerUpdate=NULL,
onScrollChange=NULL, renderCustomStats=NULL,
renderEmbeddable=NULL, renderTopRightUI=NULL,
serializedData=NULL, theme=NULL, validateEmbeddable=NULL,
viewModeEnabled=NULL, width=NULL, zenModeEnabled=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{UIOptions}{Named list. UI options for customizing the Excalidraw interface.}

\item{appState}{Named list. The current application state of Excalidraw.}

\item{autoFocus}{Logical. Determines whether to auto-focus the Excalidraw component.}

\item{detectScroll}{Logical. Determines whether to detect scroll events.}

\item{elements}{Unnamed list. The current elements in the Excalidraw scene.}

\item{excalidrawAPI}{Callback to access the Excalidraw API.}

\item{files}{Named list. Files associated with the Excalidraw scene.}

\item{generateIdForFile}{Function to generate ID for files.}

\item{gridModeEnabled}{Logical. Enables grid mode.}

\item{handleKeyboardGlobally}{Logical. Determines whether to handle keyboard events globally.}

\item{height}{Character. The height of the Excalidraw component.}

\item{initialData}{Lists containing elements 'elements', 'appstate'.
those elements have the following types:
  - elements (unnamed list; optional)
  - appstate (named list; optional). Initial data to load into the Excalidraw component.}

\item{isCollaborating}{Logical. Indicates if the component is in collaboration mode.}

\item{langCode}{Character. The language code for localization.}

\item{libraryReturnUrl}{Character. URL to return to after using the library.}

\item{name}{Character. Name of the drawing.}

\item{onLibraryChange}{Callback triggered when the library changes.}

\item{onLinkOpen}{Callback triggered when a link is opened.}

\item{onPaste}{Callback triggered on paste event.}

\item{onPointerDown}{Callback triggered on pointer down event.}

\item{onPointerUpdate}{Callback triggered on pointer update.}

\item{onScrollChange}{Callback triggered on scroll change.}

\item{renderCustomStats}{Function to render custom stats.}

\item{renderEmbeddable}{Function to render embeddable content.}

\item{renderTopRightUI}{Function to render custom UI in the top right corner.}

\item{serializedData}{Character. Serialized data of the entire Excalidraw scene.}

\item{theme}{A value equal to: "light", "dark". The theme of the Excalidraw component.}

\item{validateEmbeddable}{Logical | list of characters | list. Function or value to validate embeddable content.}

\item{viewModeEnabled}{Logical. Enables view-only mode.}

\item{width}{Character. The width of the Excalidraw component.}

\item{zenModeEnabled}{Logical. Enables zen mode.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

