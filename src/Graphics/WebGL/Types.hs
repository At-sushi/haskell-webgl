{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeSynonymInstances #-}

module Graphics.WebGL.Types (
    Context,
    Program,
    Shader,
    Buffer,
    FrameBuffer,
    RenderBuffer,
    VertexArrayObject,
    Texture,
    UniformLocation,
    ActiveInfo,
    ShaderPrecisionFormat,
    noBuffer,
    noFramebuffer,
    noTexture,
    noVAO,
) where

import Data.Int (Int32)
import Data.Word (Word16, Word8)
import GHCJS.Foreign
import GHCJS.Marshal
import GHCJS.Types
import JavaScript.Array
import JavaScript.TypedArray

type Context = JSVal

type Program = JSVal

type Shader = JSVal

type Buffer = JSVal

type FrameBuffer = JSVal

type RenderBuffer = JSVal

type VertexArrayObject = JSVal

type Texture = JSVal

{-
instance Eq Texture where
    (==) = eqRef
-}

type UniformLocation = JSVal

type ActiveInfo = JSVal

type ShaderPrecisionFormat = JSVal

-- type ArrayBufferView = JSVal

noBuffer :: Buffer
noBuffer = jsNull

noFramebuffer :: FrameBuffer
noFramebuffer = jsNull

noTexture :: Texture
noTexture = jsNull

noVAO :: VertexArrayObject
noVAO = jsNull
