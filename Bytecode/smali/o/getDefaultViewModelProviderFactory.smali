.class public abstract Lo/getDefaultViewModelProviderFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDefaultViewModelProviderFactory$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/onSaveInstanceState<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/getDefaultViewModelProviderFactory$onPostMessage;

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Lo/ImmLeaksCleaner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ImmLeaksCleaner<",
            "TT;>;"
        }
    .end annotation
.end field

.field public onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/ImmLeaksCleaner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ImmLeaksCleaner<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lo/getDefaultViewModelProviderFactory;->onMessageChannelReady:Lo/ImmLeaksCleaner;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public final extraCallback(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/onDestroy;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDestroy;

    .line 91
    invoke-virtual {p0, v0}, Lo/getDefaultViewModelProviderFactory;->extraCallback(Lo/onDestroy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    iget-object v0, v0, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lo/getDefaultViewModelProviderFactory;->onMessageChannelReady:Lo/ImmLeaksCleaner;

    invoke-virtual {p1, p0}, Lo/ImmLeaksCleaner;->onNavigationEvent(Lo/onSaveInstanceState;)V

    goto :goto_1

    .line 99
    :cond_2
    iget-object p1, p0, Lo/getDefaultViewModelProviderFactory;->onMessageChannelReady:Lo/ImmLeaksCleaner;

    invoke-virtual {p1, p0}, Lo/ImmLeaksCleaner;->onPostMessage(Lo/onSaveInstanceState;)V

    .line 101
    :goto_1
    iget-object p1, p0, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback:Lo/getDefaultViewModelProviderFactory$onPostMessage;

    iget-object v0, p0, Lo/getDefaultViewModelProviderFactory;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lo/getDefaultViewModelProviderFactory;->onNavigationEvent(Lo/getDefaultViewModelProviderFactory$onPostMessage;Ljava/lang/Object;)V

    return-void
.end method

.method abstract extraCallback(Lo/onDestroy;)Z
.end method

.method public final onNavigationEvent(Lo/getDefaultViewModelProviderFactory$onPostMessage;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getDefaultViewModelProviderFactory$onPostMessage;",
            "TT;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p0, p2}, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    iget-object p2, p0, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    invoke-interface {p1, p2}, Lo/getDefaultViewModelProviderFactory$onPostMessage;->extraCallback(Ljava/util/List;)V

    return-void

    .line 138
    :cond_2
    :goto_0
    iget-object p2, p0, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    invoke-interface {p1, p2}, Lo/getDefaultViewModelProviderFactory$onPostMessage;->ICustomTabsCallback(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lo/getDefaultViewModelProviderFactory;->onPostMessage:Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback:Lo/getDefaultViewModelProviderFactory$onPostMessage;

    invoke-virtual {p0, v0, p1}, Lo/getDefaultViewModelProviderFactory;->onNavigationEvent(Lo/getDefaultViewModelProviderFactory$onPostMessage;Ljava/lang/Object;)V

    return-void
.end method
