.class final Lo/onFocusSearchFailed$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onFocusSearchFailed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/measureChildWithDecorationsAndMargin$onPostMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/lending/StashLandingViewModel$State;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onFocusSearchFailed;


# direct methods
.method constructor <init>(Lo/onFocusSearchFailed;)V
    .locals 0

    iput-object p1, p0, Lo/onFocusSearchFailed$ICustomTabsCallback$Stub;->extraCallback:Lo/onFocusSearchFailed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 42
    check-cast p1, Lo/measureChildWithDecorationsAndMargin$onPostMessage;

    .line 1136
    iget-object v0, p0, Lo/onFocusSearchFailed$ICustomTabsCallback$Stub;->extraCallback:Lo/onFocusSearchFailed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    if-eqz p1, :cond_0

    .line 1139
    instance-of v0, p1, Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lo/onFocusSearchFailed$ICustomTabsCallback$Stub;->extraCallback:Lo/onFocusSearchFailed;

    check-cast p1, Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;

    .line 2071
    iget-object p1, p1, Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;->extraCallback:Ljava/util/List;

    .line 1140
    invoke-static {v0, p1}, Lo/onFocusSearchFailed;->extraCallback(Lo/onFocusSearchFailed;Ljava/util/List;)V

    :cond_0
    return-void
.end method
