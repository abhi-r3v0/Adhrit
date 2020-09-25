.class public final Lo/DecoderException;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 74
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 75
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    const v1, 0x8b31

    .line 78
    invoke-static {v1, p0, v0}, Lo/DecoderException;->extraCallback(ILjava/lang/String;I)V

    const p0, 0x8b30

    .line 79
    invoke-static {p0, p1, v0}, Lo/DecoderException;->extraCallback(ILjava/lang/String;I)V

    .line 82
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const/4 v1, 0x0

    aput v1, p1, v1

    const v2, 0x8b82

    .line 84
    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 85
    aget p1, p1, v1

    if-eq p1, p0, :cond_0

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to link shader program: \n"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/DecoderException;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    return v0
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GlUtil"

    .line 149
    invoke-static {v0, p0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static extraCallback([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const-string v0, "\n"

    .line 63
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/DecoderException;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static extraCallback(ILjava/lang/String;I)V
    .locals 4

    .line 133
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 134
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 135
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const v3, 0x8b81

    .line 138
    invoke-static {p0, v3, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 139
    aget v1, v1, v2

    if-eq v1, v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/DecoderException;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 144
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 145
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    return-void
.end method

.method public static onMessageChannelReady()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 118
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 119
    aget v2, v1, v0

    const v3, 0x8d65

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2601

    const/16 v4, 0x2801

    .line 120
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    .line 122
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v2, 0x812f

    const/16 v4, 0x2802

    .line 124
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 126
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 128
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 129
    aget v0, v1, v0

    return v0
.end method

.method public static onMessageChannelReady([F)Ljava/nio/FloatBuffer;
    .locals 1

    .line 99
    array-length v0, p0

    invoke-static {v0}, Lo/DecoderException;->onNavigationEvent(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public static onNavigationEvent(I)Ljava/nio/FloatBuffer;
    .locals 1

    shl-int/lit8 p0, p0, 0x2

    .line 108
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 109
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent()V
    .locals 4

    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "glError "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GlUtil"

    invoke-static {v2, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
