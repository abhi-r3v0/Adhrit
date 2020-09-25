.class final Lo/PayRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PayRequest$onPostMessage;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[F

.field private static final ICustomTabsCallback$Stub:[F

.field private static final asBinder:[F

.field private static final extraCallback:[F

.field private static final onMessageChannelReady:[Ljava/lang/String;

.field private static final onNavigationEvent:[F

.field private static final onPostMessage:[Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private asInterface:Lo/PayRequest$onPostMessage;

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:I

.field private newSession:I

.field private onRelationshipValidationResult:I

.field private onTransact:Lo/PayRequest$onPostMessage;

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string/jumbo v0, "uniform mat4 uMvpMatrix;"

    const-string/jumbo v1, "uniform mat3 uTexMatrix;"

    const-string v2, "attribute vec4 aPosition;"

    const-string v3, "attribute vec2 aTexCoords;"

    const-string/jumbo v4, "varying vec2 vTexCoords;"

    const-string/jumbo v5, "void main() {"

    const-string v6, "  gl_Position = uMvpMatrix * aPosition;"

    const-string v7, "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;"

    const-string/jumbo v8, "}"

    .line 48
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/PayRequest;->onPostMessage:[Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external : require"

    const-string v2, "precision mediump float;"

    const-string/jumbo v3, "uniform samplerExternalOES uTexture;"

    const-string/jumbo v4, "varying vec2 vTexCoords;"

    const-string/jumbo v5, "void main() {"

    const-string v6, "  gl_FragColor = texture2D(uTexture, vTexCoords);"

    const-string/jumbo v7, "}"

    .line 62
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/PayRequest;->onMessageChannelReady:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 77
    fill-array-data v1, :array_0

    sput-object v1, Lo/PayRequest;->extraCallback:[F

    new-array v1, v0, [F

    .line 80
    fill-array-data v1, :array_1

    sput-object v1, Lo/PayRequest;->onNavigationEvent:[F

    new-array v1, v0, [F

    .line 83
    fill-array-data v1, :array_2

    sput-object v1, Lo/PayRequest;->ICustomTabsCallback:[F

    new-array v1, v0, [F

    .line 86
    fill-array-data v1, :array_3

    sput-object v1, Lo/PayRequest;->ICustomTabsCallback$Stub:[F

    new-array v0, v0, [F

    .line 89
    fill-array-data v0, :array_4

    sput-object v0, Lo/PayRequest;->asBinder:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/getRewardPoints;)Z
    .locals 4

    .line 39
    iget-object v0, p0, Lo/getRewardPoints;->ICustomTabsCallback:Lo/getRewardPoints$onPostMessage;

    .line 40
    iget-object p0, p0, Lo/getRewardPoints;->onMessageChannelReady:Lo/getRewardPoints$onPostMessage;

    .line 41
    invoke-virtual {v0}, Lo/getRewardPoints$onPostMessage;->onMessageChannelReady()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 42
    invoke-virtual {v0, v2}, Lo/getRewardPoints$onPostMessage;->onMessageChannelReady(I)Lo/getRewardPoints$extraCallback;

    move-result-object v0

    iget v0, v0, Lo/getRewardPoints$extraCallback;->ICustomTabsCallback:I

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lo/getRewardPoints$onPostMessage;->onMessageChannelReady()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 44
    invoke-virtual {p0, v2}, Lo/getRewardPoints$onPostMessage;->onMessageChannelReady(I)Lo/getRewardPoints$extraCallback;

    move-result-object p0

    iget p0, p0, Lo/getRewardPoints$extraCallback;->ICustomTabsCallback:I

    if-nez p0, :cond_0

    return v3

    :cond_0
    return v2
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 2

    .line 123
    sget-object v0, Lo/PayRequest;->onPostMessage:[Ljava/lang/String;

    sget-object v1, Lo/PayRequest;->onMessageChannelReady:[Ljava/lang/String;

    invoke-static {v0, v1}, Lo/DecoderException;->extraCallback([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/PayRequest;->ICustomTabsCallback$Stub$Proxy:I

    const-string/jumbo v1, "uMvpMatrix"

    .line 124
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/PayRequest;->ICustomTabsService:I

    .line 125
    iget v0, p0, Lo/PayRequest;->ICustomTabsCallback$Stub$Proxy:I

    const-string/jumbo v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/PayRequest;->warmup:I

    .line 126
    iget v0, p0, Lo/PayRequest;->ICustomTabsCallback$Stub$Proxy:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/PayRequest;->newSession:I

    .line 127
    iget v0, p0, Lo/PayRequest;->ICustomTabsCallback$Stub$Proxy:I

    const-string v1, "aTexCoords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/PayRequest;->getInterfaceDescriptor:I

    .line 128
    iget v0, p0, Lo/PayRequest;->ICustomTabsCallback$Stub$Proxy:I

    const-string/jumbo v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/PayRequest;->mayLaunchUrl:I

    return-void
.end method

.method final extraCallback(I[FZ)V
    .locals 18

    move-object/from16 v0, p0

    if-eqz p3, :cond_0

    .line 141
    iget-object v1, v0, Lo/PayRequest;->onTransact:Lo/PayRequest$onPostMessage;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lo/PayRequest;->asInterface:Lo/PayRequest$onPostMessage;

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 147
    :cond_1
    iget v2, v0, Lo/PayRequest;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 148
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 150
    iget v2, v0, Lo/PayRequest;->newSession:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 151
    iget v2, v0, Lo/PayRequest;->getInterfaceDescriptor:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 152
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 155
    iget v2, v0, Lo/PayRequest;->onRelationshipValidationResult:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-eqz p3, :cond_2

    .line 156
    sget-object v2, Lo/PayRequest;->ICustomTabsCallback:[F

    goto :goto_1

    :cond_2
    sget-object v2, Lo/PayRequest;->onNavigationEvent:[F

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    if-eqz p3, :cond_4

    .line 158
    sget-object v2, Lo/PayRequest;->asBinder:[F

    goto :goto_1

    :cond_4
    sget-object v2, Lo/PayRequest;->ICustomTabsCallback$Stub:[F

    goto :goto_1

    .line 160
    :cond_5
    sget-object v2, Lo/PayRequest;->extraCallback:[F

    .line 162
    :goto_1
    iget v4, v0, Lo/PayRequest;->warmup:I

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 164
    iget v2, v0, Lo/PayRequest;->ICustomTabsService:I

    move-object/from16 v4, p2

    invoke-static {v2, v3, v5, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v2, 0x84c0

    .line 165
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    move/from16 v3, p1

    .line 166
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 167
    iget v2, v0, Lo/PayRequest;->mayLaunchUrl:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 168
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 171
    iget v6, v0, Lo/PayRequest;->newSession:I

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    .line 177
    invoke-static {v1}, Lo/PayRequest$onPostMessage;->ICustomTabsCallback(Lo/PayRequest$onPostMessage;)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 171
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 178
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 181
    iget v12, v0, Lo/PayRequest;->getInterfaceDescriptor:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    .line 187
    invoke-static {v1}, Lo/PayRequest$onPostMessage;->extraCallback(Lo/PayRequest$onPostMessage;)Ljava/nio/FloatBuffer;

    move-result-object v17

    .line 181
    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 188
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 191
    invoke-static {v1}, Lo/PayRequest$onPostMessage;->onMessageChannelReady(Lo/PayRequest$onPostMessage;)I

    move-result v2

    invoke-static {v1}, Lo/PayRequest$onPostMessage;->onNavigationEvent(Lo/PayRequest$onPostMessage;)I

    move-result v1

    invoke-static {v2, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 192
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 194
    iget v1, v0, Lo/PayRequest;->newSession:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 195
    iget v1, v0, Lo/PayRequest;->getInterfaceDescriptor:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public final onPostMessage(Lo/getRewardPoints;)V
    .locals 3

    .line 112
    invoke-static {p1}, Lo/PayRequest;->onMessageChannelReady(Lo/getRewardPoints;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget v0, p1, Lo/getRewardPoints;->onPostMessage:I

    iput v0, p0, Lo/PayRequest;->onRelationshipValidationResult:I

    .line 116
    new-instance v0, Lo/PayRequest$onPostMessage;

    iget-object v1, p1, Lo/getRewardPoints;->ICustomTabsCallback:Lo/getRewardPoints$onPostMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/getRewardPoints$onPostMessage;->onMessageChannelReady(I)Lo/getRewardPoints$extraCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/PayRequest$onPostMessage;-><init>(Lo/getRewardPoints$extraCallback;)V

    iput-object v0, p0, Lo/PayRequest;->asInterface:Lo/PayRequest$onPostMessage;

    .line 117
    iget-boolean v0, p1, Lo/getRewardPoints;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lo/PayRequest;->asInterface:Lo/PayRequest$onPostMessage;

    goto :goto_0

    :cond_1
    new-instance v0, Lo/PayRequest$onPostMessage;

    iget-object p1, p1, Lo/getRewardPoints;->onMessageChannelReady:Lo/getRewardPoints$onPostMessage;

    .line 118
    invoke-virtual {p1, v2}, Lo/getRewardPoints$onPostMessage;->onMessageChannelReady(I)Lo/getRewardPoints$extraCallback;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/PayRequest$onPostMessage;-><init>(Lo/getRewardPoints$extraCallback;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lo/PayRequest;->onTransact:Lo/PayRequest$onPostMessage;

    return-void
.end method
