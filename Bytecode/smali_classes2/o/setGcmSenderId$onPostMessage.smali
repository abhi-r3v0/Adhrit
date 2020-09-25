.class final Lo/setGcmSenderId$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setGcmSenderId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/setGcmSenderId;


# direct methods
.method private constructor <init>(Lo/setGcmSenderId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setGcmSenderId$onPostMessage;->extraCallback:Lo/setGcmSenderId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/setGcmSenderId;B)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lo/setGcmSenderId$onPostMessage;-><init>(Lo/setGcmSenderId;)V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lo/setGcmSenderId$onPostMessage;->extraCallback:Lo/setGcmSenderId;

    .line 1208
    iget-object v0, v0, Lo/setGcmSenderId;->asInterface:Lo/setGcmSenderId$onMessageChannelReady;

    .line 2015
    iget-object v1, v0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v1

    .line 2016
    :try_start_0
    iget-object v2, v0, Lo/setGcmSenderId$onMessageChannelReady;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 2017
    iget-object v2, v0, Lo/setGcmSenderId$onMessageChannelReady;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    const/4 p2, 0x0

    .line 2018
    iput-object p2, v0, Lo/setGcmSenderId$onMessageChannelReady;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 2019
    :cond_0
    iget-object p2, v0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setGcmSenderId;

    .line 2209
    iget-object p2, p2, Lo/setGcmSenderId;->onRelationshipValidationResult:Ljava/util/Map;

    .line 2019
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "CameraSource"

    const-string p2, "Skipping frame. Could not find ByteBuffer associated with the image data from the camera."

    .line 2020
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    monitor-exit v1

    return-void

    .line 2022
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lo/setGcmSenderId$onMessageChannelReady;->onPostMessage:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lo/setGcmSenderId$onMessageChannelReady;->onMessageChannelReady:J

    .line 2023
    iget p2, v0, Lo/setGcmSenderId$onMessageChannelReady;->asInterface:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lo/setGcmSenderId$onMessageChannelReady;->asInterface:I

    .line 2024
    iget-object p2, v0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setGcmSenderId;

    .line 3209
    iget-object p2, p2, Lo/setGcmSenderId;->onRelationshipValidationResult:Ljava/util/Map;

    .line 2024
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, v0, Lo/setGcmSenderId$onMessageChannelReady;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 2025
    iget-object p1, v0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2026
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method
