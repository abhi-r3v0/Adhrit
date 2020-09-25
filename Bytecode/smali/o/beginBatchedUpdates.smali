.class public final Lo/beginBatchedUpdates;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/beginBatchedUpdates$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Landroid/view/View;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/beginBatchedUpdates;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lo/beginBatchedUpdates;-><init>(Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public constructor <init>(Lo/onDisconnectSetValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/view/View;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/beginBatchedUpdates;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lo/replaceAllInternal;->extraCallback:Lo/replaceAllInternal$onNavigationEvent;

    .line 1047
    invoke-static {}, Lo/replaceAllInternal;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lo/beginBatchedUpdates;->extraCallback:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 16
    iget-object v2, p0, Lo/beginBatchedUpdates;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lo/beginBatchedUpdates;->extraCallback:J

    .line 18
    sget-object v2, Lo/replaceAllInternal;->extraCallback:Lo/replaceAllInternal$onNavigationEvent;

    const/4 v2, 0x0

    .line 2047
    invoke-static {v2}, Lo/replaceAllInternal;->onMessageChannelReady(Z)V

    .line 19
    sget-object v2, Lo/replaceAllInternal;->extraCallback:Lo/replaceAllInternal$onNavigationEvent;

    .line 2048
    invoke-static {}, Lo/replaceAllInternal;->extraCallback()Lo/getServerTime;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 19
    new-instance v3, Lo/getResourceId$onMessageChannelReady;

    invoke-direct {v3, v2}, Lo/getResourceId$onMessageChannelReady;-><init>(Lo/getServerTime;)V

    move-object v2, v3

    :cond_1
    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    :cond_2
    move-object v2, p0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    iput-wide v0, p0, Lo/beginBatchedUpdates;->extraCallback:J

    :cond_3
    return-void
.end method

.method public final run()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4010
    iput-wide v0, p0, Lo/beginBatchedUpdates;->extraCallback:J

    return-void
.end method
