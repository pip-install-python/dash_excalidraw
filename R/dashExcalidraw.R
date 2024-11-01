# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dashExcalidraw <- function(id=NULL, UIOptions=NULL, appState=NULL, autoFocus=NULL, detectScroll=NULL, elements=NULL, excalidrawAPI=NULL, files=NULL, generateIdForFile=NULL, gridModeEnabled=NULL, handleKeyboardGlobally=NULL, height=NULL, initialData=NULL, isCollaborating=NULL, langCode=NULL, libraryReturnUrl=NULL, name=NULL, onLibraryChange=NULL, onLinkOpen=NULL, onPaste=NULL, onPointerDown=NULL, onPointerUpdate=NULL, onScrollChange=NULL, renderCustomStats=NULL, renderEmbeddable=NULL, renderTopRightUI=NULL, serializedData=NULL, theme=NULL, validateEmbeddable=NULL, viewModeEnabled=NULL, width=NULL, zenModeEnabled=NULL) {
    
    props <- list(id=id, UIOptions=UIOptions, appState=appState, autoFocus=autoFocus, detectScroll=detectScroll, elements=elements, excalidrawAPI=excalidrawAPI, files=files, generateIdForFile=generateIdForFile, gridModeEnabled=gridModeEnabled, handleKeyboardGlobally=handleKeyboardGlobally, height=height, initialData=initialData, isCollaborating=isCollaborating, langCode=langCode, libraryReturnUrl=libraryReturnUrl, name=name, onLibraryChange=onLibraryChange, onLinkOpen=onLinkOpen, onPaste=onPaste, onPointerDown=onPointerDown, onPointerUpdate=onPointerUpdate, onScrollChange=onScrollChange, renderCustomStats=renderCustomStats, renderEmbeddable=renderEmbeddable, renderTopRightUI=renderTopRightUI, serializedData=serializedData, theme=theme, validateEmbeddable=validateEmbeddable, viewModeEnabled=viewModeEnabled, width=width, zenModeEnabled=zenModeEnabled)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashExcalidraw',
        namespace = 'dash_excalidraw',
        propNames = c('id', 'UIOptions', 'appState', 'autoFocus', 'detectScroll', 'elements', 'excalidrawAPI', 'files', 'generateIdForFile', 'gridModeEnabled', 'handleKeyboardGlobally', 'height', 'initialData', 'isCollaborating', 'langCode', 'libraryReturnUrl', 'name', 'onLibraryChange', 'onLinkOpen', 'onPaste', 'onPointerDown', 'onPointerUpdate', 'onScrollChange', 'renderCustomStats', 'renderEmbeddable', 'renderTopRightUI', 'serializedData', 'theme', 'validateEmbeddable', 'viewModeEnabled', 'width', 'zenModeEnabled'),
        package = 'dashExcalidraw'
        )

    structure(component, class = c('dash_component', 'list'))
}
