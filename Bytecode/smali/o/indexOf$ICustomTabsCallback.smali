.class public final Lo/indexOf$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isSameListener;
.implements Lo/indexOf$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/indexOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/indexOf$ICustomTabsCallback$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/isSameListener<",
        "TT;>;",
        "Lo/indexOf$extraCallback;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003:\u0001\u0011B\u001f\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005X\u0088\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00028\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/utils/SnapshotUtils$SynchronizedLazyInSessionImpl;",
        "T",
        "Lkotlin/Lazy;",
        "Lcom/dreamplug/utils/SnapshotUtils$Resettable;",
        "initializer",
        "Lkotlin/Function0;",
        "lock",
        "",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V",
        "_value",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "isInitialized",
        "",
        "reset",
        "",
        "UNINITIALIZED_VALUE",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:Ljava/lang/Object;

.field private onMessageChannelReady:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lo/getServerTime;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lo/indexOf$ICustomTabsCallback;-><init>(Lo/getServerTime;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lo/getServerTime;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/indexOf$ICustomTabsCallback;->onMessageChannelReady:Lo/getServerTime;

    .line 19
    sget-object p1, Lo/indexOf$ICustomTabsCallback$extraCallback;->onMessageChannelReady:Lo/indexOf$ICustomTabsCallback$extraCallback;

    iput-object p1, p0, Lo/indexOf$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    .line 21
    iput-object p0, p0, Lo/indexOf$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 46
    sget-object v0, Lo/indexOf$ICustomTabsCallback$extraCallback;->onMessageChannelReady:Lo/indexOf$ICustomTabsCallback$extraCallback;

    iput-object v0, p0, Lo/indexOf$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/indexOf$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    .line 26
    sget-object v1, Lo/indexOf$ICustomTabsCallback$extraCallback;->onMessageChannelReady:Lo/indexOf$ICustomTabsCallback$extraCallback;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lo/indexOf$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lo/indexOf$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    .line 33
    sget-object v2, Lo/indexOf$ICustomTabsCallback$extraCallback;->onMessageChannelReady:Lo/indexOf$ICustomTabsCallback$extraCallback;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, p0, Lo/indexOf$ICustomTabsCallback;->onMessageChannelReady:Lo/getServerTime;

    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-interface {v1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    .line 37
    sget-object v2, Lo/indexOf;->ICustomTabsCallback:Lo/indexOf;

    invoke-static {}, Lo/indexOf;->onMessageChannelReady()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iput-object v1, p0, Lo/indexOf$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
