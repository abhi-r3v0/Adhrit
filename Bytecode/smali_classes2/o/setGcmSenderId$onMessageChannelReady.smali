.class public final Lo/setGcmSenderId$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setGcmSenderId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/Object;

.field final synthetic ICustomTabsCallback$Stub:Lo/setGcmSenderId;

.field asInterface:I

.field public extraCallback:Lo/setProjectId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setProjectId<",
            "*>;"
        }
    .end annotation
.end field

.field onMessageChannelReady:J

.field onNavigationEvent:Z

.field onPostMessage:J

.field onRelationshipValidationResult:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lo/setGcmSenderId;Lo/setProjectId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setProjectId<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setGcmSenderId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setGcmSenderId$onMessageChannelReady;->onPostMessage:J

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lo/setGcmSenderId$onMessageChannelReady;->onNavigationEvent:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lo/setGcmSenderId$onMessageChannelReady;->asInterface:I

    .line 6
    iput-object p2, p0, Lo/setGcmSenderId$onMessageChannelReady;->extraCallback:Lo/setProjectId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 27
    :goto_0
    iget-object v0, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lo/setGcmSenderId$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setGcmSenderId$onMessageChannelReady;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    .line 29
    :try_start_1
    iget-object v1, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "CameraSource"

    const-string v3, "Frame processing loop terminated."

    .line 32
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    monitor-exit v0

    return-void

    .line 34
    :cond_0
    iget-boolean v1, p0, Lo/setGcmSenderId$onMessageChannelReady;->onNavigationEvent:Z

    if-nez v1, :cond_1

    .line 35
    monitor-exit v0

    return-void

    .line 36
    :cond_1
    new-instance v1, Lo/setStorageBucket$onNavigationEvent;

    invoke-direct {v1}, Lo/setStorageBucket$onNavigationEvent;-><init>()V

    iget-object v2, p0, Lo/setGcmSenderId$onMessageChannelReady;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setGcmSenderId;

    .line 1211
    iget-object v3, v3, Lo/setGcmSenderId;->onTransact:Lo/getPrimaryAction;

    .line 2005
    iget v3, v3, Lo/getPrimaryAction;->extraCallback:I

    .line 37
    iget-object v4, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setGcmSenderId;

    .line 2211
    iget-object v4, v4, Lo/setGcmSenderId;->onTransact:Lo/getPrimaryAction;

    .line 3006
    iget v4, v4, Lo/getPrimaryAction;->onNavigationEvent:I

    if-eqz v2, :cond_6

    .line 3024
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    mul-int v6, v3, v4

    if-lt v5, v6, :cond_5

    .line 3029
    iget-object v5, v1, Lo/setStorageBucket$onNavigationEvent;->onMessageChannelReady:Lo/setStorageBucket;

    .line 4029
    iput-object v2, v5, Lo/setStorageBucket;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    .line 3030
    iget-object v2, v1, Lo/setStorageBucket$onNavigationEvent;->onMessageChannelReady:Lo/setStorageBucket;

    .line 5001
    iget-object v2, v2, Lo/setStorageBucket;->onPostMessage:Lo/setStorageBucket$onPostMessage;

    .line 5025
    iput v3, v2, Lo/setStorageBucket$onPostMessage;->onNavigationEvent:I

    .line 5026
    iput v4, v2, Lo/setStorageBucket$onPostMessage;->ICustomTabsCallback:I

    const/16 v3, 0x11

    .line 5027
    iput v3, v2, Lo/setStorageBucket$onPostMessage;->asBinder:I

    .line 39
    iget v2, p0, Lo/setGcmSenderId$onMessageChannelReady;->asInterface:I

    .line 5035
    iget-object v3, v1, Lo/setStorageBucket$onNavigationEvent;->onMessageChannelReady:Lo/setStorageBucket;

    .line 6001
    iget-object v3, v3, Lo/setStorageBucket;->onPostMessage:Lo/setStorageBucket$onPostMessage;

    .line 6028
    iput v2, v3, Lo/setStorageBucket$onPostMessage;->onPostMessage:I

    .line 40
    iget-wide v2, p0, Lo/setGcmSenderId$onMessageChannelReady;->onMessageChannelReady:J

    .line 6037
    iget-object v4, v1, Lo/setStorageBucket$onNavigationEvent;->onMessageChannelReady:Lo/setStorageBucket;

    .line 7001
    iget-object v4, v4, Lo/setStorageBucket;->onPostMessage:Lo/setStorageBucket$onPostMessage;

    .line 7029
    iput-wide v2, v4, Lo/setStorageBucket$onPostMessage;->extraCallback:J

    .line 41
    iget-object v2, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setGcmSenderId;

    .line 7210
    iget v2, v2, Lo/setGcmSenderId;->onPostMessage:I

    .line 8039
    iget-object v3, v1, Lo/setStorageBucket$onNavigationEvent;->onMessageChannelReady:Lo/setStorageBucket;

    .line 9001
    iget-object v3, v3, Lo/setStorageBucket;->onPostMessage:Lo/setStorageBucket$onPostMessage;

    .line 9030
    iput v2, v3, Lo/setStorageBucket$onPostMessage;->onMessageChannelReady:I

    .line 9041
    iget-object v2, v1, Lo/setStorageBucket$onNavigationEvent;->onMessageChannelReady:Lo/setStorageBucket;

    .line 10030
    iget-object v2, v2, Lo/setStorageBucket;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_4

    .line 9043
    iget-object v1, v1, Lo/setStorageBucket$onNavigationEvent;->onMessageChannelReady:Lo/setStorageBucket;

    .line 44
    iget-object v2, p0, Lo/setGcmSenderId$onMessageChannelReady;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 45
    iput-object v3, p0, Lo/setGcmSenderId$onMessageChannelReady;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 46
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 47
    :try_start_3
    iget-object v0, p0, Lo/setGcmSenderId$onMessageChannelReady;->extraCallback:Lo/setProjectId;

    .line 11009
    new-instance v3, Lo/setStorageBucket$onPostMessage;

    .line 12001
    iget-object v4, v1, Lo/setStorageBucket;->onPostMessage:Lo/setStorageBucket$onPostMessage;

    .line 11009
    invoke-direct {v3, v4}, Lo/setStorageBucket$onPostMessage;-><init>(Lo/setStorageBucket$onPostMessage;)V

    .line 12019
    iget v4, v3, Lo/setStorageBucket$onPostMessage;->onMessageChannelReady:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 12020
    iget v4, v3, Lo/setStorageBucket$onPostMessage;->onNavigationEvent:I

    .line 12021
    iget v5, v3, Lo/setStorageBucket$onPostMessage;->ICustomTabsCallback:I

    iput v5, v3, Lo/setStorageBucket$onPostMessage;->onNavigationEvent:I

    .line 12022
    iput v4, v3, Lo/setStorageBucket$onPostMessage;->ICustomTabsCallback:I

    :cond_2
    const/4 v4, 0x0

    .line 12023
    iput v4, v3, Lo/setStorageBucket$onPostMessage;->onMessageChannelReady:I

    .line 11011
    invoke-virtual {v0, v1}, Lo/setProjectId;->ICustomTabsCallback(Lo/setStorageBucket;)Landroid/util/SparseArray;

    move-result-object v1

    .line 11012
    invoke-virtual {v0}, Lo/setProjectId;->onMessageChannelReady()Z

    .line 11013
    new-instance v3, Lo/setProjectId$extraCallback;

    invoke-direct {v3, v1}, Lo/setProjectId$extraCallback;-><init>(Landroid/util/SparseArray;)V

    .line 11015
    iget-object v1, v0, Lo/setProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11016
    :try_start_4
    iget-object v4, v0, Lo/setProjectId;->onNavigationEvent:Lo/setProjectId$onNavigationEvent;

    if-eqz v4, :cond_3

    .line 11018
    iget-object v0, v0, Lo/setProjectId;->onNavigationEvent:Lo/setProjectId$onNavigationEvent;

    invoke-interface {v0, v3}, Lo/setProjectId$onNavigationEvent;->onNavigationEvent(Lo/setProjectId$extraCallback;)V

    .line 11019
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    iget-object v0, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setGcmSenderId;

    .line 12207
    iget-object v0, v0, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    .line 48
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 11017
    :cond_3
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Detector processor must first be set with setProcessor in order to receive detection results."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    .line 11019
    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    const-string v1, "CameraSource"

    const-string v3, "Exception thrown from receiver."

    .line 51
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 52
    iget-object v0, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setGcmSenderId;

    .line 13207
    iget-object v0, v0, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    .line 52
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 54
    :goto_2
    iget-object v1, p0, Lo/setGcmSenderId$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setGcmSenderId;

    .line 14207
    iget-object v1, v1, Lo/setGcmSenderId;->onNavigationEvent:Landroid/hardware/Camera;

    .line 54
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 55
    throw v0

    .line 9042
    :cond_4
    :try_start_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing image data.  Call either setBitmap or setImageData to specify the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3025
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid image data size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3023
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null image data supplied."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v1

    .line 46
    monitor-exit v0

    throw v1
.end method
