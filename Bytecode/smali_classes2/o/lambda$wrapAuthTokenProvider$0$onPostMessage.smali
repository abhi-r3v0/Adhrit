.class public final Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;
.super Lo/applySubtreeWrite;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lambda$wrapAuthTokenProvider$0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/applySubtreeWrite<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "count",
        "",
        "index",
        "computeNext",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/lambda$wrapAuthTokenProvider$0;

.field private extraCallback:I

.field private onPostMessage:I


# direct methods
.method constructor <init>(Lo/lambda$wrapAuthTokenProvider$0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->ICustomTabsCallback:Lo/lambda$wrapAuthTokenProvider$0;

    invoke-direct {p0}, Lo/applySubtreeWrite;-><init>()V

    .line 112
    invoke-virtual {p1}, Lo/rootWrite;->size()I

    move-result v0

    iput v0, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->extraCallback:I

    .line 113
    invoke-static {p1}, Lo/lambda$wrapAuthTokenProvider$0;->extraCallback(Lo/lambda$wrapAuthTokenProvider$0;)I

    move-result p1

    iput p1, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->onPostMessage:I

    return-void
.end method


# virtual methods
.method protected final extraCallback()V
    .locals 2

    .line 116
    iget v0, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->extraCallback:I

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->onNavigationEvent()V

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->ICustomTabsCallback:Lo/lambda$wrapAuthTokenProvider$0;

    invoke-static {v0}, Lo/lambda$wrapAuthTokenProvider$0;->onMessageChannelReady(Lo/lambda$wrapAuthTokenProvider$0;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->onPostMessage:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->onNavigationEvent(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->ICustomTabsCallback:Lo/lambda$wrapAuthTokenProvider$0;

    iget v1, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->onPostMessage:I

    add-int/lit8 v1, v1, 0x1

    .line 208
    invoke-static {v0}, Lo/lambda$wrapAuthTokenProvider$0;->onNavigationEvent(Lo/lambda$wrapAuthTokenProvider$0;)I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->onPostMessage:I

    .line 122
    iget v0, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/lambda$wrapAuthTokenProvider$0$onPostMessage;->extraCallback:I

    return-void
.end method
