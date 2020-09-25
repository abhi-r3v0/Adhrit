.class public Lo/subUiVisibilityChanged;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u0002*\u0006\u0008\u0001\u0010\u0003 \u00002\u00020\u0002B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\t\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\rR\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005X\u0088\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00018\u0000X\u0088\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/contacthelper/SingletonHolder;",
        "T",
        "",
        "A",
        "creator",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "instance",
        "Ljava/lang/Object;",
        "getInstance",
        "()Ljava/lang/Object;",
        "init",
        "arg",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "contact_helper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "-TA;+TT;>;"
        }
    .end annotation
.end field

.field public volatile onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-TA;+TT;>;)V"
        }
    .end annotation

    const-string v0, "creator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lo/subUiVisibilityChanged;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 12
    iget-object p1, p0, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type T"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lo/subUiVisibilityChanged;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-interface {v0, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lo/subUiVisibilityChanged;->ICustomTabsCallback:Lo/onDisconnectSetValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
