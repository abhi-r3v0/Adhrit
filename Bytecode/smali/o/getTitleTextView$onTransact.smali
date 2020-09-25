.class public final Lo/getTitleTextView$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTitleTextView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
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
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "t",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "androidx/lifecycle/LiveDataKt$observe$wrappedObserver$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getTitleTextView;


# direct methods
.method public constructor <init>(Lo/getTitleTextView;)V
    .locals 0

    iput-object p1, p0, Lo/getTitleTextView$onTransact;->onNavigationEvent:Lo/getTitleTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    check-cast p1, Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lo/getTitleTextView$onTransact;->onNavigationEvent:Lo/getTitleTextView;

    invoke-static {v0}, Lo/getTitleTextView;->onNavigationEvent(Lo/getTitleTextView;)Lo/getDropDownViewTheme;

    move-result-object v0

    iget-object v0, v0, Lo/getDropDownViewTheme;->extraCallback:Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 53
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 54
    iget-object p1, p0, Lo/getTitleTextView$onTransact;->onNavigationEvent:Lo/getTitleTextView;

    invoke-static {p1}, Lo/getTitleTextView;->extraCallback(Lo/getTitleTextView;)V

    .line 55
    iget-object p1, p0, Lo/getTitleTextView$onTransact;->onNavigationEvent:Lo/getTitleTextView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lo/getTitleTextView$onTransact;->onNavigationEvent:Lo/getTitleTextView;

    invoke-static {v0, p1}, Lo/getTitleTextView;->extraCallback(Lo/getTitleTextView;Ljava/lang/String;)V

    return-void
.end method
