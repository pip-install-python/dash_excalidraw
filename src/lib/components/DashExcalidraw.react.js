import React from 'react';
import PropTypes from 'prop-types';
import { Excalidraw } from "@excalidraw/excalidraw";

/**
 * DashExcalidraw is a Dash component that wraps the Excalidraw drawing tool.
 * It provides a customizable canvas for creating diagrams and sketches.
 */
const DashExcalidraw = (props) => {
    if (typeof window === "undefined") {
        return null;
    }

    const {
        id,
        setProps,
        width,
        height,
        initialData,
        excalidrawAPI,
        isCollaborating,
        onPointerUpdate,
        onPointerDown,
        onScrollChange,
        onPaste,
        onLibraryChange,
        onLinkOpen,
        langCode,
        renderTopRightUI,
        renderCustomStats,
        viewModeEnabled,
        zenModeEnabled,
        gridModeEnabled,
        libraryReturnUrl,
        theme,
        name,
        UIOptions,
        detectScroll,
        handleKeyboardGlobally,
        autoFocus,
        generateIdForFile,
        validateEmbeddable,
        renderEmbeddable
    } = props;

    const onChange = (elements, state, files) => {
        const nonDeletedElements = elements.filter(el => !el.isDeleted);

        // Filter files to keep only those referenced by non-deleted elements
        const updatedFiles = {};
        nonDeletedElements.forEach(element => {
            if (element.type === 'image' && element.fileId && files[element.fileId]) {
                updatedFiles[element.fileId] = files[element.fileId];
            }
        });

        const serializedData = {
            type: "excalidraw",
            version: 2,
            source: window.location.href,
            elements: nonDeletedElements,
            appState: {
                gridSize: state.gridSize,
                viewBackgroundColor: state.viewBackgroundColor
            },
            files: updatedFiles
        };

        setProps({
            elements: serializedData.elements,
            appState: serializedData.appState,
            files: updatedFiles,
            serializedData: JSON.stringify(serializedData)
        });
    };

    return (
        <div id={id} style={{ width, height }}>
            <Excalidraw
                initialData={initialData}
                onChange={onChange}
                excalidrawAPI={(api) => {
                    if (excalidrawAPI) {excalidrawAPI(api);}
                    setProps({ excalidrawAPI: api });
                }}
                isCollaborating={isCollaborating}
                onPointerUpdate={onPointerUpdate}
                onPointerDown={onPointerDown}
                onScrollChange={onScrollChange}
                onPaste={onPaste}
                onLibraryChange={onLibraryChange}
                onLinkOpen={onLinkOpen}
                langCode={langCode}
                renderTopRightUI={renderTopRightUI}
                renderCustomStats={renderCustomStats}
                viewModeEnabled={viewModeEnabled}
                zenModeEnabled={zenModeEnabled}
                gridModeEnabled={gridModeEnabled}
                libraryReturnUrl={libraryReturnUrl}
                theme={theme}
                name={name}
                UIOptions={UIOptions}
                detectScroll={detectScroll}
                handleKeyboardGlobally={handleKeyboardGlobally}
                autoFocus={autoFocus}
                generateIdForFile={generateIdForFile}
                validateEmbeddable={validateEmbeddable}
                renderEmbeddable={renderEmbeddable}
            />
        </div>
    );
}

DashExcalidraw.defaultProps = {
    width: '100%',
    height: '400px',
    initialData: { elements: [], appState: {} },
    isCollaborating: true,
    viewModeEnabled: false,
    zenModeEnabled: false,
    gridModeEnabled: false,
    theme: "light",
    detectScroll: true,
    handleKeyboardGlobally: true,
    autoFocus: true
};

DashExcalidraw.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func,

    /**
     * The width of the Excalidraw component.
     */
    width: PropTypes.string,

    /**
     * The height of the Excalidraw component.
     */
    height: PropTypes.string,

    /**
     * Initial data to load into the Excalidraw component.
     */
    initialData: PropTypes.shape({
        elements: PropTypes.array,
        appState: PropTypes.object,
    }),

    /**
     * The current elements in the Excalidraw scene.
     */
    elements: PropTypes.array,

    /**
     * The current application state of Excalidraw.
     */
    appState: PropTypes.object,

    /**
     * Files associated with the Excalidraw scene.
     */
    files: PropTypes.object,

    /**
     * Serialized data of the entire Excalidraw scene.
     */
    serializedData: PropTypes.string,

    /**
     * Callback to access the Excalidraw API.
     */
    excalidrawAPI: PropTypes.func,

    /**
     * Indicates if the component is in collaboration mode.
     */
    isCollaborating: PropTypes.bool,

    /**
     * Callback triggered on pointer update.
     */
    onPointerUpdate: PropTypes.func,

    /**
     * Callback triggered on pointer down event.
     */
    onPointerDown: PropTypes.func,

    /**
     * Callback triggered on scroll change.
     */
    onScrollChange: PropTypes.func,

    /**
     * Callback triggered on paste event.
     */
    onPaste: PropTypes.func,

    /**
     * Callback triggered when the library changes.
     */
    onLibraryChange: PropTypes.func,

    /**
     * Callback triggered when a link is opened.
     */
    onLinkOpen: PropTypes.func,

    /**
     * The language code for localization.
     */
    langCode: PropTypes.string,

    /**
     * Function to render custom UI in the top right corner.
     */
    renderTopRightUI: PropTypes.func,

    /**
     * Function to render custom stats.
     */
    renderCustomStats: PropTypes.func,

    /**
     * Enables view-only mode.
     */
    viewModeEnabled: PropTypes.bool,

    /**
     * Enables zen mode.
     */
    zenModeEnabled: PropTypes.bool,

    /**
     * Enables grid mode.
     */
    gridModeEnabled: PropTypes.bool,

    /**
     * URL to return to after using the library.
     */
    libraryReturnUrl: PropTypes.string,

    /**
     * The theme of the Excalidraw component.
     */
    theme: PropTypes.oneOf(["light", "dark"]),

    /**
     * Name of the drawing.
     */
    name: PropTypes.string,

    /**
     * UI options for customizing the Excalidraw interface.
     */
    UIOptions: PropTypes.object,

    /**
     * Determines whether to detect scroll events.
     */
    detectScroll: PropTypes.bool,

    /**
     * Determines whether to handle keyboard events globally.
     */
    handleKeyboardGlobally: PropTypes.bool,

    /**
     * Determines whether to auto-focus the Excalidraw component.
     */
    autoFocus: PropTypes.bool,

    /**
     * Function to generate ID for files.
     */
    generateIdForFile: PropTypes.func,

    /**
     * Function or value to validate embeddable content.
     */
    validateEmbeddable: PropTypes.oneOfType([
        PropTypes.bool,
        PropTypes.arrayOf(PropTypes.string),
        PropTypes.instanceOf(RegExp),
        PropTypes.arrayOf(PropTypes.instanceOf(RegExp)),
        PropTypes.func
    ]),

    /**
     * Function to render embeddable content.
     */
    renderEmbeddable: PropTypes.func
};


export default DashExcalidraw;