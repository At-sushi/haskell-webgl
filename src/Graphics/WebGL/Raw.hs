module Graphics.WebGL.Raw where

import Data.Int
import Data.Word

import GHCJS.Types
import JavaScript.Array
import JavaScript.TypedArray
import JavaScript.TypedArray.ArrayBuffer

import Graphics.WebGL.Types

foreign import javascript unsafe "$r = $1.getContext(\"webgl\");"
    getContext :: JSRef a -> IO Context

foreign import javascript unsafe "$1.activeTexture($2)"
    activeTexture :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.attachShader($2, $3)"
    attachShader :: Context -> Program -> Shader -> IO ()

foreign import javascript unsafe "$1.bindAttribLocation($2, $3, $4)"
    bindAttribLocation :: Context -> Program -> Word -> JSString -> IO ()

foreign import javascript unsafe "$1.bindBuffer($2, $3)"
    bindBuffer :: Context -> Word -> Buffer -> IO ()

foreign import javascript unsafe "$1.bindFramebuffer($2, $3)"
    bindFramebuffer :: Context -> Word -> FrameBuffer -> IO ()

foreign import javascript unsafe "$1.bindRenderbuffer($2, $3)"
    bindRenderbuffer :: Context -> Word -> RenderBuffer -> IO ()

foreign import javascript unsafe "$1.bindTexture($2, $3)"
    bindTexture :: Context -> Word -> Texture -> IO ()

foreign import javascript unsafe "$1.blendColor($2, $3, $4, $5)"
    blendColor :: Context -> Float -> Float -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.blendEquation($2)"
    blendEquation :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.blendEquationSeparate($2, $3)"
    blendEquationSeparate :: Context -> Word -> Word -> IO ()

foreign import javascript unsafe "$1.blendFunc($2, $3)"
    blendFunc :: Context -> Word -> Word -> IO ()

foreign import javascript unsafe "$1.blendFuncSeparate($2, $3, $4, $5)"
    blendFuncSeparate :: Context -> Word -> Word -> Word -> Word -> IO ()

foreign import javascript unsafe "$1.bufferData($2, $3, $4)"
    bufferData :: Context -> Word -> ArrayBuffer -> Word -> IO ()

foreign import javascript unsafe "$1.bufferSubData($2, $3, $4)"
    bufferSubData :: Context -> Word -> Word -> ArrayBuffer -> IO ()

foreign import javascript unsafe "$1.checkFramebufferStatus($2)"
    checkFramebufferStatus :: Context -> Word -> IO Word

foreign import javascript unsafe "$1.clear($2)"
    clear :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.clearColor($2, $3, $4, $5)"
    clearColor :: Context -> Float -> Float -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.clearDepth($2)"
    clearDepth :: Context -> Float -> IO ()

foreign import javascript unsafe "$1.clearStencil($2)"
    clearStencil :: Context -> Int32 -> IO ()

foreign import javascript unsafe "$1.colorMask($2, $3, $4, $5)"
    colorMask :: Context -> Bool -> Bool -> Bool -> Bool -> IO ()

foreign import javascript unsafe "$1.compileShader($2)"
    compileShader :: Context -> Shader -> IO ()

foreign import javascript unsafe "$1.compressedTexImage2D($2, $3, $4, $5, $6, $7, $8)"
    compressedTexImage2D :: Context -> Word -> Int32 -> Word -> Int32 -> Int32 -> Int32 -> Uint8Array -> IO ()

foreign import javascript unsafe "$1.compressedTexSubImage2D($2, $3, $4, $5, $6, $7, $8, $9)"
    compressedTexSubImage2D :: Context -> Word -> Int32 -> Int32 -> Int32 -> Int32 -> Int32 -> Word -> Uint8Array -> IO ()

foreign import javascript unsafe "$1.copyTexImage2D($2, $3, $4, $5, $6, $7, $8, $9)"
    copyTexImage2D :: Context -> Word -> Int32 -> Word -> Int32 -> Int32 -> Int32 -> Int32 -> Int32 -> IO ()

foreign import javascript unsafe "$1.copyTexSubImage2D($2, $3, $4, $5, $6, $7, $8, $9)"
    copyTexSubImage2D :: Context -> Word -> Int32 -> Int32 -> Int32 -> Int32 -> Int32 -> Int32 -> Int32 -> IO ()

foreign import javascript unsafe "$1.createBuffer()"
    createBuffer :: Context -> IO Buffer

foreign import javascript unsafe "$1.createFramebuffer()"
    createFramebuffer :: Context -> IO FrameBuffer

foreign import javascript unsafe "$1.createProgram()"
    createProgram :: Context -> IO Program

foreign import javascript unsafe "$1.createRenderbuffer()"
    createRenderbuffer :: Context -> IO RenderBuffer

foreign import javascript unsafe "$1.createShader($2)"
    createShader :: Context -> Word -> IO Shader

foreign import javascript unsafe "$1.createTexture()"
    createTexture :: Context -> IO Texture

foreign import javascript unsafe "$1.cullFace($2)"
    cullFace :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.deleteBuffer($2)"
    deleteBuffer :: Context -> Buffer -> IO ()

foreign import javascript unsafe "$1.deleteFramebuffer($2)"
    deleteFramebuffer :: Context -> FrameBuffer -> IO ()

foreign import javascript unsafe "$1.deleteProgram($2)"
    deleteProgram :: Context -> Program -> IO ()

foreign import javascript unsafe "$1.deleteRenderbuffer($2)"
    deleteRenderbuffer :: Context -> RenderBuffer -> IO ()

foreign import javascript unsafe "$1.deleteShader($2)"
    deleteShader :: Context -> Shader -> IO ()

foreign import javascript unsafe "$1.deleteTexture($2)"
    deleteTexture :: Context -> Texture -> IO ()

foreign import javascript unsafe "$1.depthFunc($2)"
    depthFunc :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.depthMask($2)"
    depthMask :: Context -> Bool -> IO ()

foreign import javascript unsafe "$1.depthRange($2, $3)"
    depthRange :: Context -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.detachShader($2, $3)"
    detachShader :: Context -> Program -> Shader -> IO ()

foreign import javascript unsafe "$1.disable($2)"
    disable :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.disableVertexAttribArray($2)"
    disableVertexAttribArray :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.drawArrays($2, $3, $4)"
    drawArrays :: Context -> Word -> Int32 -> Int32 -> IO ()

foreign import javascript unsafe "$1.drawElements($2, $3, $4, $5)"
    drawElements :: Context -> Word -> Int32 -> Word -> Word -> IO ()

foreign import javascript unsafe "$1.enable($2)"
    enable :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.enableVertexAttribArray($2)"
    enableVertexAttribArray :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.finish()"
    finish :: Context -> IO ()

foreign import javascript unsafe "$1.flush()"
    flush :: Context -> IO ()

foreign import javascript unsafe "$1.framebufferRenderbuffer($2, $3, $4, $5)"
    framebufferRenderbuffer :: Context -> Word -> Word -> Word -> RenderBuffer -> IO ()

foreign import javascript unsafe "$1.framebufferTexture2D($2, $3, $4, $5, $6)"
    framebufferTexture2D :: Context -> Word -> Word -> Word -> Texture -> Int32 -> IO ()

foreign import javascript unsafe "$1.frontFace($2)"
    frontFace :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.generateMipmap($2)"
    generateMipmap :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.getActiveAttrib($2, $3)"
    getActiveAttrib :: Context -> Program -> Word -> IO ActiveInfo

foreign import javascript unsafe "$1.getActiveUniform($2, $3)"
    getActiveUniform :: Context -> Program -> Word -> IO ActiveInfo

{-
foreign import javascript unsafe "$1.getAttachedShaders($2)"
    getAttachedShaders :: Context -> Program -> IO JSArray
-}

foreign import javascript unsafe "$1.getAttribLocation($2, $3)"
    getAttribLocation :: Context -> Program -> JSString -> IO Int32

foreign import javascript unsafe "$1.getBufferParameter($2, $3)"
    getBufferParameter :: Context -> Word -> Word -> IO JSVal

foreign import javascript unsafe "$1.getParameter($2)"
    getParameter :: Context -> Word -> IO JSVal

foreign import javascript unsafe "$1.getError()"
    getError :: Context -> IO Word

foreign import javascript unsafe "$1.getFramebufferAttachmentParameter($2, $3)"
    getFramebufferAttachmentParameter :: Context -> Word -> Word -> IO Word

foreign import javascript unsafe "$1.getProgramInfoLog($2)"
    getProgramInfoLog :: Context -> Program -> IO JSString

foreign import javascript unsafe "$1.getRenderbufferParameter($2, $3)"
    getRenderbufferParameter :: Context -> Word -> Word -> IO JSVal

foreign import javascript unsafe "$1.getShaderParameter($2, $3)"
    getShaderParameterBool :: Context -> Shader -> Word -> IO Bool

foreign import javascript unsafe "$1.getShaderPrecisionFormat($2, $3)"
    getShaderPrecisionFormat :: Context -> Word -> Word -> IO ShaderPrecisionFormat

foreign import javascript unsafe "$1.getShaderInfoLog($2)"
    getShaderInfoLog :: Context -> Shader -> IO JSString

foreign import javascript unsafe "$1.getShaderSource($2)"
    getShaderSource :: Context -> Shader -> IO JSString

foreign import javascript unsafe "$1.getTexParameter($2, $3)"
    getTexParameter :: Context -> Word -> Word -> IO JSVal

foreign import javascript unsafe "$1.getUniform($2, $3)"
    getUniform :: Context -> Program -> UniformLocation -> IO JSVal

foreign import javascript unsafe "$1.getUniformLocation($2, $3)"
    getUniformLocation :: Context -> Program -> JSString -> IO UniformLocation

foreign import javascript unsafe "$1.getVertexAttrib($2, $3)"
    getVertexAttrib :: Context -> Word -> Word -> IO JSVal

foreign import javascript unsafe "$1.getVertexAttribOffset($2, $3)"
    getVertexAttribOffset :: Context -> Word -> Word -> IO Word

foreign import javascript unsafe "$1.hint($2, $3)"
    hint :: Context -> Word -> Word -> IO ()

foreign import javascript unsafe "$1.isBuffer($2)"
    isBuffer :: Context -> Buffer -> IO Bool

foreign import javascript unsafe "$1.isEnabled($2)"
    isEnabled :: Context -> Word -> IO Bool

foreign import javascript unsafe "$1.isFramebuffer($2)"
    isFramebuffer :: Context -> FrameBuffer -> IO Bool

foreign import javascript unsafe "$1.isProgram($2)"
    isProgram :: Context -> Program -> IO Bool

foreign import javascript unsafe "$1.isRenderbuffer($2)"
    isRenderbuffer :: Context -> RenderBuffer -> IO Bool

foreign import javascript unsafe "$1.isShader($2)"
    isShader :: Context -> Shader -> IO Bool

foreign import javascript unsafe "$1.isTexture($2)"
    isTexture :: Context -> Texture -> IO Bool

foreign import javascript unsafe "$1.lineWidth($2)"
    lineWidth :: Context -> Float -> IO ()

foreign import javascript unsafe "$1.linkProgram($2)"
    linkProgram :: Context -> Program -> IO ()

foreign import javascript unsafe "$1.pixelStorei($2, $3)"
    pixelStorei :: Context -> Word -> Int32 -> IO ()

foreign import javascript unsafe "$1.polygonOffset($2, $3)"
    polygonOffset :: Context -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.readPixels($2, $3, $4, $5, $6, $7, $8)"
    readPixelsUInt8 :: Context -> Int32 -> Int32 -> Int32 -> Int32 -> Word -> Word -> Uint8Array -> IO ()

foreign import javascript unsafe "$1.readPixels($2, $3, $4, $5, $6, $7, $8)"
    readPixelsUInt16 :: Context -> Int32 -> Int32 -> Int32 -> Int32 -> Word -> Word -> Uint16Array -> IO ()

foreign import javascript unsafe "$1.readPixels($2, $3, $4, $5, $6, $7, $8)"
    readPixelsFloat :: Context -> Int32 -> Int32 -> Int32 -> Int32 -> Word -> Word -> Float32Array -> IO ()

foreign import javascript unsafe "$1.renderbufferStorage($2, $3, $4, $5)"
    renderbufferStorage :: Context -> Word -> Word -> Int32 -> Int32 -> IO ()

foreign import javascript unsafe "$1.sampleCoverage($2, $3)"
    sampleCoverage :: Context -> Float -> Bool -> IO ()

foreign import javascript unsafe "$1.scissor($2, $3, $4, $5)"
    scissor :: Context -> Int32 -> Int32 -> Int32 -> Int32 -> IO ()

foreign import javascript unsafe "$1.shaderSource($2, $3)"
    shaderSource :: Context -> Shader -> JSString -> IO ()

foreign import javascript unsafe "$1.stencilFunc($2, $3, $4)"
    stencilFunc :: Context -> Word -> Int32 -> Word -> IO ()

foreign import javascript unsafe "$1.stencilFuncSeparate($2, $3, $4, $5)"
    stencilFuncSeparate :: Context -> Word -> Word -> Int32 -> Word -> IO ()

foreign import javascript unsafe "$1.stencilMask($2)"
    stencilMask :: Context -> Word -> IO ()

foreign import javascript unsafe "$1.stencilMaskSeparate($2, $3)"
    stencilMaskSeparate :: Context -> Word -> Word -> IO ()

foreign import javascript unsafe "$1.stencilOp($2, $3, $4)"
    stencilOp :: Context -> Word -> Word -> Word -> IO ()

foreign import javascript unsafe "$1.stencilOpSeparate($2, $3, $4, $5)"
    stencilOpSeparate :: Context -> Word -> Word -> Word -> Word -> IO ()

foreign import javascript unsafe "$1.texImage2D($2, $3, $4, $5, $6, $7, $8, $9, $10)"
    texImage2DUInt :: Context -> Word -> Int32 -> Int32 -> Int32 -> Int32 -> Int32 -> Word -> Word -> Uint8Array -> IO ()

foreign import javascript unsafe "$1.texImage2D($2, $3, $4, $5, $6, $7, $8, $9, $10)"
    texImage2DFloat :: Context -> Word -> Int32 -> Int32 -> Int32 -> Int32 -> Int32 -> Word -> Word -> Float32Array -> IO ()

foreign import javascript unsafe "$1.texParameterf($2, $3, $4)"
    texParameterf :: Context -> Word -> Word -> Float -> IO ()

foreign import javascript unsafe "$1.texParameteri($2, $3, $4)"
    texParameteri :: Context -> Word -> Word -> Int32 -> IO ()

foreign import javascript unsafe "$1.texSubImage2D($2, $3, $4, $5, $6, $7, $8, $9, $10)"
    texSubImage2D :: Context -> Word -> Int32 -> Int32 -> Int32 -> Int32 -> Int32 -> Word -> Word -> Uint8Array -> IO ()

foreign import javascript unsafe "$1.uniform1f($2, $3)"
    uniform1f :: Context -> UniformLocation -> Float -> IO ()

foreign import javascript unsafe "$1.uniform1fv($2, $3)"
    uniform1fv :: Context -> UniformLocation -> Float32Array -> IO ()

foreign import javascript unsafe "$1.uniform1i($2, $3)"
    uniform1i :: Context -> UniformLocation -> Int32 -> IO ()

foreign import javascript unsafe "$1.uniform1iv($2, $3)"
    uniform1iv :: Context -> UniformLocation -> Int32Array -> IO ()

foreign import javascript unsafe "$1.uniform2f($2, $3, $4)"
    uniform2f :: Context -> UniformLocation -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.uniform2fv($2, $3)"
    uniform2fv :: Context -> UniformLocation -> Float32Array -> IO ()

foreign import javascript unsafe "$1.uniform2i($2, $3, $4)"
    uniform2i :: Context -> UniformLocation -> Int32 -> Int32 -> IO ()

foreign import javascript unsafe "$1.uniform2iv($2, $3)"
    uniform2iv :: Context -> UniformLocation -> Int32Array -> IO ()

foreign import javascript unsafe "$1.uniform3f($2, $3, $4, $5)"
    uniform3f :: Context -> UniformLocation -> Float -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.uniform3fv($2, $3)"
    uniform3fv :: Context -> UniformLocation -> Float32Array -> IO ()

foreign import javascript unsafe "$1.uniform3i($2, $3, $4, $5)"
    uniform3i :: Context -> UniformLocation -> Int32 -> Int32 -> Int32 -> IO ()

foreign import javascript unsafe "$1.uniform3iv($2, $3)"
    uniform3iv :: Context -> UniformLocation -> Int32Array -> IO ()

foreign import javascript unsafe "$1.uniform4f($2, $3, $4, $5, $6)"
    uniform4f :: Context -> UniformLocation -> Float -> Float -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.uniform4fv($2, $3)"
    uniform4fv :: Context -> UniformLocation -> Float32Array -> IO ()

foreign import javascript unsafe "$1.uniform4i($2, $3, $4, $5, $6)"
    uniform4i :: Context -> UniformLocation -> Int32 -> Int32 -> Int32 -> Int32 -> IO ()

foreign import javascript unsafe "$1.uniform4iv($2, $3)"
    uniform4iv :: Context -> UniformLocation -> Int32Array -> IO ()

foreign import javascript unsafe "$1.uniformMatrix2fv($2, $3, $4)"
    uniformMatrix2fv :: Context -> UniformLocation -> Bool -> Float32Array -> IO ()

foreign import javascript unsafe "$1.uniformMatrix3fv($2, $3, $4)"
    uniformMatrix3fv :: Context -> UniformLocation -> Bool -> Float32Array -> IO ()

foreign import javascript unsafe "$1.uniformMatrix4fv($2, $3, $4)"
    uniformMatrix4fv :: Context -> UniformLocation -> Bool -> Float32Array -> IO ()

foreign import javascript unsafe "$1.useProgram($2)"
    useProgram :: Context -> Program -> IO ()

foreign import javascript unsafe "$1.validateProgram($2)"
    validateProgram :: Context -> Program -> IO ()

foreign import javascript unsafe "$1.vertexAttrib1f($2, $3)"
    vertexAttrib1f :: Context -> Word -> Float -> IO ()

foreign import javascript unsafe "$1.vertexAttrib1fv($2, $3)"
    vertexAttrib1fv :: Context -> Word -> Float32Array -> IO ()

foreign import javascript unsafe "$1.vertexAttrib2f($2, $3, $4)"
    vertexAttrib2f :: Context -> Word -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.vertexAttrib2fv($2, $3)"
    vertexAttrib2fv :: Context -> Word -> Float32Array -> IO ()

foreign import javascript unsafe "$1.vertexAttrib3f($2, $3, $4, $5)"
    vertexAttrib3f :: Context -> Word -> Float -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.vertexAttrib3fv($2, $3)"
    vertexAttrib3fv :: Context -> Word -> Float32Array -> IO ()

foreign import javascript unsafe "$1.vertexAttrib4f($2, $3, $4, $5, $6)"
    vertexAttrib4f :: Context -> Word -> Float -> Float -> Float -> Float -> IO ()

foreign import javascript unsafe "$1.vertexAttrib4fv($2, $3)"
    vertexAttrib4fv :: Context -> Word -> Float32Array -> IO ()

foreign import javascript unsafe "$1.vertexAttribPointer($2, $3, $4, $5, $6, $7)"
    vertexAttribPointer :: Context -> Word -> Int32 -> Word -> Bool -> Int32 -> Word -> IO ()

foreign import javascript unsafe "$1.viewport($2, $3, $4, $5)"
    viewport :: Context -> Int32 -> Int32 -> Int32 -> Int32 -> IO ()

-- Extensions

foreign import javascript unsafe "$1.getExtension($2)"
    getExtension :: Context -> JSString -> IO JSVal

-- OES_vertex_array_object

foreign import javascript unsafe "$1.vaoExt.createVertexArrayOES()"
    createVertexArrayOES :: Context -> IO VertexArrayObject

foreign import javascript unsafe "$1.vaoExt.bindVertexArrayOES($2)"
    bindVertexArrayOES :: Context -> VertexArrayObject -> IO ()

foreign import javascript unsafe "$1.vaoExt.deleteVertexArrayOES($2)"
    deleteVertexArrayOES :: Context -> VertexArrayObject -> IO ()

foreign import javascript unsafe "$1.vaoExt.isVertexArrayOES($2)"
    isVertexArrayOES :: Context -> VertexArrayObject -> IO Bool

-- WEBGL_draw_buffers

foreign import javascript unsafe "$1.drawBufs.drawBuffersWEBGL($2)"
    drawBuffersWEBGL :: Context -> Int32Array -> IO ()
