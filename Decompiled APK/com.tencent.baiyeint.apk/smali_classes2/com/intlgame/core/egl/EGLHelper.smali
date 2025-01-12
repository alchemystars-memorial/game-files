.class public Lcom/intlgame/core/egl/EGLHelper;
.super Ljava/lang/Object;
.source "EGLHelper.java"


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098


# instance fields
.field private alpha:I

.field private blue:I

.field private depth:I

.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private gl:Ljavax/microedition/khronos/opengles/GL10;

.field private green:I

.field private red:I

.field private renderType:I

.field private shareContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x8

    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->red:I

    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->green:I

    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->blue:I

    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->alpha:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->depth:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->renderType:I

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->shareContext:Ljavax/microedition/khronos/egl/EGLContext;

    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "getEGL failed"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private makeCurrent()V
    .locals 4

    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/intlgame/core/egl/EGLHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "get gl failed"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/intlgame/core/egl/EGLHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method public eglInit(II)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v5, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v5, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v1, 0x1

    new-array v10, v1, [I

    const/16 v4, 0xd

    new-array v11, v4, [I

    const/16 v4, 0x3024

    aput v4, v11, v2

    iget v4, v0, Lcom/intlgame/core/egl/EGLHelper;->red:I

    aput v4, v11, v1

    const/16 v4, 0x3023

    aput v4, v11, v3

    iget v4, v0, Lcom/intlgame/core/egl/EGLHelper;->green:I

    const/4 v12, 0x3

    aput v4, v11, v12

    const/16 v4, 0x3022

    const/4 v13, 0x4

    aput v4, v11, v13

    iget v4, v0, Lcom/intlgame/core/egl/EGLHelper;->blue:I

    const/4 v14, 0x5

    aput v4, v11, v14

    const/4 v4, 0x6

    const/16 v5, 0x3021

    aput v5, v11, v4

    const/4 v4, 0x7

    iget v5, v0, Lcom/intlgame/core/egl/EGLHelper;->alpha:I

    aput v5, v11, v4

    const/16 v4, 0x8

    const/16 v5, 0x3025

    aput v5, v11, v4

    const/16 v4, 0x9

    iget v5, v0, Lcom/intlgame/core/egl/EGLHelper;->depth:I

    aput v5, v11, v4

    const/16 v4, 0xa

    const/16 v5, 0x3040

    aput v5, v11, v4

    const/16 v4, 0xb

    iget v5, v0, Lcom/intlgame/core/egl/EGLHelper;->renderType:I

    aput v5, v11, v4

    const/16 v4, 0xc

    const/16 v15, 0x3038

    aput v15, v11, v4

    iget-object v4, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v11

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v8, v10, v2

    if-nez v8, :cond_1

    return v2

    :cond_1
    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v4, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object v6, v11

    move-object v7, v9

    move-object v11, v9

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget-object v4, v11, v2

    new-array v5, v14, [I

    const/16 v6, 0x3057

    aput v6, v5, v2

    aput p1, v5, v1

    const/16 v2, 0x3056

    aput v2, v5, v3

    aput p2, v5, v12

    aput v15, v5, v13

    iget-object v2, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, v0, Lcom/intlgame/core/egl/EGLHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    new-array v2, v12, [I

    fill-array-data v2, :array_0

    iget-object v3, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, v0, Lcom/intlgame/core/egl/EGLHelper;->shareContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v5, v4, v6, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, v0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/egl/EGLHelper;->makeCurrent()V

    return v1

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
