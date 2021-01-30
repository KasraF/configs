function yarn_link
    cd vscode/out-monaco-editor-core/; and yarn link; and ../../
    cd monaco-editor/; and yarn link monaco-editor-core
    and cd release; and yarn link; and ../../
    if test -d "synthesizer"
        cd synthesizer
        yarn link monaco-editor
        cd ../
    end
    if test -d "MonacoServer"
        cd MonacoServer
        yarn link monaco-editor
        cd ../
    end
end
