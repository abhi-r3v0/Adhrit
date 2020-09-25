.class final Lo/setDeeplinkPath$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDeeplinkPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final onMessageChannelReady:Landroid/media/MediaCodec$CryptoInfo;

.field private final onPostMessage:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lo/setDeeplinkPath$onNavigationEvent;->onMessageChannelReady:Landroid/media/MediaCodec$CryptoInfo;

    .line 122
    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object p1, p0, Lo/setDeeplinkPath$onNavigationEvent;->onPostMessage:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Lo/setDeeplinkPath$4;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lo/setDeeplinkPath$onNavigationEvent;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setDeeplinkPath$onNavigationEvent;II)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lo/setDeeplinkPath$onNavigationEvent;->onPostMessage(II)V

    return-void
.end method

.method private onPostMessage(II)V
    .locals 1

    .line 126
    iget-object v0, p0, Lo/setDeeplinkPath$onNavigationEvent;->onPostMessage:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 127
    iget-object p1, p0, Lo/setDeeplinkPath$onNavigationEvent;->onMessageChannelReady:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p2, p0, Lo/setDeeplinkPath$onNavigationEvent;->onPostMessage:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-void
.end method
