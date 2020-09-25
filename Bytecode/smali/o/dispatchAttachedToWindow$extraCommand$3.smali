.class public final Lo/dispatchAttachedToWindow$extraCommand$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchAttachedToWindow$extraCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/nba/NBAFragment$scrollListener$2$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
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
.field private synthetic onNavigationEvent:Lo/dispatchAttachedToWindow$extraCommand;


# direct methods
.method constructor <init>(Lo/dispatchAttachedToWindow$extraCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lo/dispatchAttachedToWindow$extraCommand$3;->onNavigationEvent:Lo/dispatchAttachedToWindow$extraCommand;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 75
    iget-object p1, p0, Lo/dispatchAttachedToWindow$extraCommand$3;->onNavigationEvent:Lo/dispatchAttachedToWindow$extraCommand;

    iget-object p1, p1, Lo/dispatchAttachedToWindow$extraCommand;->onNavigationEvent:Lo/dispatchAttachedToWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/dispatchAttachedToWindow;->onMessageChannelReady(Lo/dispatchAttachedToWindow;Z)V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 76
    iget-object p2, p0, Lo/dispatchAttachedToWindow$extraCommand$3;->onNavigationEvent:Lo/dispatchAttachedToWindow$extraCommand;

    iget-object p2, p2, Lo/dispatchAttachedToWindow$extraCommand;->onNavigationEvent:Lo/dispatchAttachedToWindow;

    invoke-static {p2, p1}, Lo/dispatchAttachedToWindow;->onMessageChannelReady(Lo/dispatchAttachedToWindow;Z)V

    :cond_1
    return-void
.end method
