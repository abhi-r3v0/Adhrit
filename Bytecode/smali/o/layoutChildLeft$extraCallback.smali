.class public final Lo/layoutChildLeft$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/layoutChildLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$Companion;",
        "",
        "()V",
        "MIN_LOADER_SEEN_TIME",
        "",
        "POLL_DURATION",
        "RESULT_FAILED",
        "",
        "RESULT_IN_PROCESS",
        "RESULT_SUCCESS",
        "START",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onMessageChannelReady:Lo/setSafeMode;

.field private onNavigationEvent:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/isChildOrHidden$onPostMessage;)V
    .locals 1

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iget-object v0, p1, Lo/isChildOrHidden$onPostMessage;->extraCallback:Lo/setSafeMode;

    if-eqz v0, :cond_0

    .line 1028
    check-cast v0, Lo/setSafeMode;

    iput-object v0, p0, Lo/layoutChildLeft$extraCallback;->onMessageChannelReady:Lo/setSafeMode;

    .line 2065
    iget v0, p1, Lo/isChildOrHidden$onPostMessage;->onMessageChannelReady:I

    .line 3044
    iget-object v0, p1, Lo/isChildOrHidden$onPostMessage;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0

    .line 1030
    iput-object v0, p0, Lo/layoutChildLeft$extraCallback;->onNavigationEvent:Lo/getRootAlpha;

    .line 3087
    iget-object p1, p1, Lo/isChildOrHidden$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-static {p1}, Lo/getRootAlpha;->onMessageChannelReady(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 1031
    iput-object p1, p0, Lo/layoutChildLeft$extraCallback;->onPostMessage:Ljava/util/List;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method


# virtual methods
.method public final declared-synchronized onPostMessage()V
    .locals 2

    monitor-enter p0

    .line 3119
    :try_start_0
    iget-object v0, p0, Lo/layoutChildLeft$extraCallback;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    const/4 v0, 0x0

    .line 3120
    iput-object v0, p0, Lo/layoutChildLeft$extraCallback;->onNavigationEvent:Lo/getRootAlpha;

    .line 3121
    iget-object v1, p0, Lo/layoutChildLeft$extraCallback;->onPostMessage:Ljava/util/List;

    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Ljava/lang/Iterable;)V

    .line 3122
    iput-object v0, p0, Lo/layoutChildLeft$extraCallback;->onPostMessage:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
