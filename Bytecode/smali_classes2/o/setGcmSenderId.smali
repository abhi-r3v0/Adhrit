.class public final Lo/setGcmSenderId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setGcmSenderId$onMessageChannelReady;,
        Lo/setGcmSenderId$onPostMessage;,
        Lo/setGcmSenderId$extraCallback;,
        Lo/setGcmSenderId$onNavigationEvent;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/Object;

.field public ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field public asBinder:F

.field public asInterface:Lo/setGcmSenderId$onMessageChannelReady;

.field public extraCallback:I

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private newSession:Ljava/lang/Thread;

.field onMessageChannelReady:Landroid/content/Context;

.field onNavigationEvent:Landroid/hardware/Camera;

.field onPostMessage:I

.field onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field onTransact:Lo/getPrimaryAction;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setGcmSenderId;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lo/setGcmSenderId;->extraCallback:I

    const/high16 v1, 0x41f00000    # 30.0f

    .line 65
    iput v1, p0, Lo/setGcmSenderId;->asBinder:F

    const/16 v1, 0x400

    .line 66
    iput v1, p0, Lo/setGcmSenderId;->ICustomTabsCallback$Stub$Proxy:I

    const/16 v1, 0x300

    .line 67
    iput v1, p0, Lo/setGcmSenderId;->ICustomTabsService:I

    .line 68
    iput-boolean v0, p0, Lo/setGcmSenderId;->ICustomTabsCallback$Stub:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setGcmSenderId;->onRelationshipValidationResult:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lo/setGcmSenderId;-><init>()V

    return-void
.end method

.method private final extraCallback(Lo/getPrimaryAction;)[B
    .locals 4

    const/16 v0, 0x11

    .line 188
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    .line 8006
    iget v1, p1, Lo/getPrimaryAction;->onNavigationEvent:I

    .line 9005
    iget p1, p1, Lo/getPrimaryAction;->extraCallback:I

    mul-int v1, v1, p1

    mul-int v1, v1, v0

    int-to-long v0, v1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 191
    new-array p1, p1, [B

    .line 192
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 195
    iget-object v1, p0, Lo/setGcmSenderId;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create valid buffer for camera source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 6

    .line 31
    iget-object v0, p0, Lo/setGcmSenderId;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lo/setGcmSenderId;->asInterface:Lo/setGcmSenderId$onMessageChannelReady;

    .line 7011
    iget-object v2, v1, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    .line 7012
    :try_start_1
    iput-boolean v3, v1, Lo/setGcmSenderId$onMessageChannelReady;->onNavigationEvent:Z

    .line 7013
    iget-object v1, v1, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7014
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    iget-object v1, p0, Lo/setGcmSenderId;->newSession:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 34
    :try_start_3
    iget-object v1, p0, Lo/setGcmSenderId;->newSession:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    :try_start_4
    const-string v1, "CameraSource"

    const-string v3, "Frame processing thread interrupted on release."

    .line 37
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    iput-object v2, p0, Lo/setGcmSenderId;->newSession:Ljava/lang/Thread;

    .line 39
    :cond_0
    iget-object v1, p0, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 41
    iget-object v1, p0, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    :try_start_5
    iget-object v1, p0, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_6
    const-string v3, "CameraSource"

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to clear camera preview: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_1
    iget-object v1, p0, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 49
    iput-object v2, p0, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    .line 50
    :cond_1
    iget-object v1, p0, Lo/setGcmSenderId;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7014
    monitor-exit v2

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    .line 51
    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(Landroid/view/SurfaceHolder;)Lo/setGcmSenderId;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 19
    iget-object v2, v1, Lo/setGcmSenderId;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v0, v1, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 21
    monitor-exit v2

    return-object v1

    .line 1072
    :cond_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v4, 0x0

    .line 1073
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_2

    .line 1074
    invoke-static {v4, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1075
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    if-eq v4, v6, :cond_17

    .line 1082
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 1083
    iget v5, v1, Lo/setGcmSenderId;->ICustomTabsCallback$Stub$Proxy:I

    iget v6, v1, Lo/setGcmSenderId;->ICustomTabsService:I

    .line 1084
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 1086
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    .line 1088
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    .line 1089
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 1091
    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-float v12, v12

    iget v13, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 1092
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/Camera$Size;

    .line 1093
    iget v15, v14, Landroid/hardware/Camera$Size;->width:I

    int-to-float v15, v15

    iget v3, v14, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v15, v3

    sub-float v3, v12, v15

    .line 1094
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v15, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v15

    if-gez v3, :cond_4

    .line 1095
    new-instance v3, Lo/setGcmSenderId$extraCallback;

    invoke-direct {v3, v11, v14}, Lo/setGcmSenderId$extraCallback;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1099
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    if-nez v3, :cond_6

    const-string v3, "CameraSource"

    const-string v10, "No preview sizes have a corresponding same-aspect-ratio picture size"

    .line 1100
    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 1102
    new-instance v10, Lo/setGcmSenderId$extraCallback;

    invoke-direct {v10, v8, v7}, Lo/setGcmSenderId$extraCallback;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1108
    :cond_6
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const v8, 0x7fffffff

    move-object v11, v7

    const/4 v10, 0x0

    const v12, 0x7fffffff

    :cond_7
    :goto_4
    if-ge v10, v3, :cond_8

    invoke-virtual {v9, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v10, v10, 0x1

    check-cast v13, Lo/setGcmSenderId$extraCallback;

    .line 2006
    iget-object v14, v13, Lo/setGcmSenderId$extraCallback;->ICustomTabsCallback:Lo/getPrimaryAction;

    .line 3005
    iget v15, v14, Lo/getPrimaryAction;->extraCallback:I

    sub-int/2addr v15, v5

    .line 1111
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 3006
    iget v14, v14, Lo/getPrimaryAction;->onNavigationEvent:I

    sub-int/2addr v14, v6

    .line 1111
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int/2addr v15, v14

    if-ge v15, v12, :cond_7

    move-object v11, v13

    move v12, v15

    goto :goto_4

    :cond_8
    if-eqz v11, :cond_16

    .line 3007
    iget-object v3, v11, Lo/setGcmSenderId$extraCallback;->onMessageChannelReady:Lo/getPrimaryAction;

    .line 4006
    iget-object v5, v11, Lo/setGcmSenderId$extraCallback;->ICustomTabsCallback:Lo/getPrimaryAction;

    .line 1121
    iput-object v5, v1, Lo/setGcmSenderId;->onTransact:Lo/getPrimaryAction;

    .line 1122
    iget v5, v1, Lo/setGcmSenderId;->asBinder:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 1126
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v6

    .line 1127
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v9, v7

    :cond_9
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/4 v12, 0x0

    .line 1128
    aget v13, v10, v12

    sub-int v12, v5, v13

    .line 1129
    aget v11, v10, v11

    sub-int v11, v5, v11

    .line 1130
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v12, v11

    if-ge v12, v8, :cond_9

    move-object v9, v10

    move v8, v12

    goto :goto_5

    :cond_a
    if-eqz v9, :cond_15

    .line 1139
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    if-eqz v3, :cond_b

    .line 5005
    iget v6, v3, Lo/getPrimaryAction;->extraCallback:I

    .line 5006
    iget v3, v3, Lo/getPrimaryAction;->onNavigationEvent:I

    .line 1141
    invoke-virtual {v5, v6, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1142
    :cond_b
    iget-object v3, v1, Lo/setGcmSenderId;->onTransact:Lo/getPrimaryAction;

    .line 6005
    iget v3, v3, Lo/getPrimaryAction;->extraCallback:I

    .line 1142
    iget-object v6, v1, Lo/setGcmSenderId;->onTransact:Lo/getPrimaryAction;

    .line 6006
    iget v6, v6, Lo/getPrimaryAction;->onNavigationEvent:I

    .line 1142
    invoke-virtual {v5, v3, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const/4 v3, 0x0

    .line 1143
    aget v6, v9, v3

    aget v3, v9, v11

    invoke-virtual {v5, v6, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v3, 0x11

    .line 1144
    invoke-virtual {v5, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 1145
    iget-object v3, v1, Lo/setGcmSenderId;->onMessageChannelReady:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1146
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_f

    if-eq v3, v11, :cond_e

    const/4 v6, 0x2

    if-eq v3, v6, :cond_d

    const/4 v6, 0x3

    if-eq v3, v6, :cond_c

    const-string v6, "CameraSource"

    const/16 v8, 0x1f

    .line 1158
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Bad rotation value: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    const/16 v3, 0x10e

    goto :goto_7

    :cond_d
    const/16 v3, 0xb4

    goto :goto_7

    :cond_e
    const/16 v3, 0x5a

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v3, 0x0

    .line 1159
    :goto_7
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1160
    invoke-static {v4, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1161
    iget v4, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v11, :cond_10

    .line 1162
    iget v4, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v3

    rem-int/lit16 v4, v4, 0x168

    rsub-int v3, v4, 0x168

    .line 1163
    rem-int/lit16 v3, v3, 0x168

    goto :goto_8

    .line 1164
    :cond_10
    iget v4, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v3

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v4, v4, 0x168

    move v3, v4

    .line 1166
    :goto_8
    div-int/lit8 v6, v4, 0x5a

    iput v6, v1, Lo/setGcmSenderId;->onPostMessage:I

    .line 1167
    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1168
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1169
    iget-object v3, v1, Lo/setGcmSenderId;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 1170
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lo/setGcmSenderId;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1171
    iget-object v3, v1, Lo/setGcmSenderId;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    const-string v3, "CameraSource"

    const-string v4, "FocusMode %s is not supported on this device."

    new-array v6, v11, [Ljava/lang/Object;

    .line 1172
    iget-object v8, v1, Lo/setGcmSenderId;->getInterfaceDescriptor:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iput-object v7, v1, Lo/setGcmSenderId;->getInterfaceDescriptor:Ljava/lang/String;

    .line 1174
    :cond_12
    :goto_9
    iget-object v3, v1, Lo/setGcmSenderId;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v3, :cond_14

    iget-boolean v3, v1, Lo/setGcmSenderId;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_14

    .line 1176
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    const-string v4, "continuous-video"

    .line 1177
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "continuous-video"

    .line 1178
    invoke-virtual {v5, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const-string v3, "continuous-video"

    .line 1179
    iput-object v3, v1, Lo/setGcmSenderId;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_a

    :cond_13
    const-string v3, "CameraSource"

    const-string v4, "Camera auto focus is not supported on this device."

    .line 1180
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_14
    :goto_a
    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1182
    new-instance v3, Lo/setGcmSenderId$onPostMessage;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lo/setGcmSenderId$onPostMessage;-><init>(Lo/setGcmSenderId;B)V

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1183
    iget-object v3, v1, Lo/setGcmSenderId;->onTransact:Lo/getPrimaryAction;

    invoke-direct {v1, v3}, Lo/setGcmSenderId;->extraCallback(Lo/getPrimaryAction;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1184
    iget-object v3, v1, Lo/setGcmSenderId;->onTransact:Lo/getPrimaryAction;

    invoke-direct {v1, v3}, Lo/setGcmSenderId;->extraCallback(Lo/getPrimaryAction;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1185
    iget-object v3, v1, Lo/setGcmSenderId;->onTransact:Lo/getPrimaryAction;

    invoke-direct {v1, v3}, Lo/setGcmSenderId;->extraCallback(Lo/getPrimaryAction;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1186
    iget-object v3, v1, Lo/setGcmSenderId;->onTransact:Lo/getPrimaryAction;

    invoke-direct {v1, v3}, Lo/setGcmSenderId;->extraCallback(Lo/getPrimaryAction;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 22
    iput-object v0, v1, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    move-object/from16 v3, p1

    .line 23
    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 24
    iget-object v0, v1, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 25
    new-instance v0, Ljava/lang/Thread;

    iget-object v3, v1, Lo/setGcmSenderId;->asInterface:Lo/setGcmSenderId$onMessageChannelReady;

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, v1, Lo/setGcmSenderId;->newSession:Ljava/lang/Thread;

    .line 26
    iget-object v0, v1, Lo/setGcmSenderId;->asInterface:Lo/setGcmSenderId$onMessageChannelReady;

    .line 6011
    iget-object v3, v0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6012
    :try_start_1
    iput-boolean v11, v0, Lo/setGcmSenderId$onMessageChannelReady;->onNavigationEvent:Z

    .line 6013
    iget-object v0, v0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6014
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    iget-object v0, v1, Lo/setGcmSenderId;->newSession:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    .line 6014
    monitor-exit v3

    throw v0

    .line 1138
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not find suitable preview frames per second range."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not find suitable preview size."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not find requested camera."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 29
    monitor-exit v2

    throw v0
.end method
