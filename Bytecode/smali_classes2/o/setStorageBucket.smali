.class public final Lo/setStorageBucket;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setStorageBucket$onMessageChannelReady;,
        Lo/setStorageBucket$onPostMessage;,
        Lo/setStorageBucket$onNavigationEvent;
    }
.end annotation


# instance fields
.field public onMessageChannelReady:Ljava/nio/ByteBuffer;

.field final onPostMessage:Lo/setStorageBucket$onPostMessage;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lo/setStorageBucket$onPostMessage;

    invoke-direct {v0}, Lo/setStorageBucket$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/setStorageBucket;->onPostMessage:Lo/setStorageBucket$onPostMessage;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lo/setStorageBucket;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/setStorageBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/setStorageBucket$onPostMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/setStorageBucket;->onPostMessage:Lo/setStorageBucket$onPostMessage;

    return-object v0
.end method
