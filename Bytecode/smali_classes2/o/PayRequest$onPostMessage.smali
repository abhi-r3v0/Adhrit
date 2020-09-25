.class Lo/PayRequest$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/nio/FloatBuffer;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private final onPostMessage:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lo/getRewardPoints$extraCallback;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-virtual {p1}, Lo/getRewardPoints$extraCallback;->extraCallback()I

    move-result v0

    iput v0, p0, Lo/PayRequest$onPostMessage;->onNavigationEvent:I

    .line 213
    iget-object v0, p1, Lo/getRewardPoints$extraCallback;->onMessageChannelReady:[F

    invoke-static {v0}, Lo/DecoderException;->onMessageChannelReady([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/PayRequest$onPostMessage;->ICustomTabsCallback:Ljava/nio/FloatBuffer;

    .line 214
    iget-object v0, p1, Lo/getRewardPoints$extraCallback;->extraCallback:[F

    invoke-static {v0}, Lo/DecoderException;->onMessageChannelReady([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/PayRequest$onPostMessage;->onPostMessage:Ljava/nio/FloatBuffer;

    .line 215
    iget p1, p1, Lo/getRewardPoints$extraCallback;->onNavigationEvent:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x4

    .line 224
    iput p1, p0, Lo/PayRequest$onPostMessage;->onMessageChannelReady:I

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 220
    iput p1, p0, Lo/PayRequest$onPostMessage;->onMessageChannelReady:I

    return-void

    :cond_1
    const/4 p1, 0x5

    .line 217
    iput p1, p0, Lo/PayRequest$onPostMessage;->onMessageChannelReady:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/PayRequest$onPostMessage;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 205
    iget-object p0, p0, Lo/PayRequest$onPostMessage;->ICustomTabsCallback:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/PayRequest$onPostMessage;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 205
    iget-object p0, p0, Lo/PayRequest$onPostMessage;->onPostMessage:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/PayRequest$onPostMessage;)I
    .locals 0

    .line 205
    iget p0, p0, Lo/PayRequest$onPostMessage;->onMessageChannelReady:I

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/PayRequest$onPostMessage;)I
    .locals 0

    .line 205
    iget p0, p0, Lo/PayRequest$onPostMessage;->onNavigationEvent:I

    return p0
.end method
