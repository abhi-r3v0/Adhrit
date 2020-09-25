.class final Lo/addOnChildAttachStateChangeListener$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnChildAttachStateChangeListener;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/unregisterAdapterDataObserver;",
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
        "Lcom/dreamplug/fabrik/ui/main/BottomBarState;",
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
.field private synthetic extraCallback:Lo/addOnChildAttachStateChangeListener;


# direct methods
.method constructor <init>(Lo/addOnChildAttachStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lo/addOnChildAttachStateChangeListener$onNavigationEvent;->extraCallback:Lo/addOnChildAttachStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 24
    check-cast p1, Lo/unregisterAdapterDataObserver;

    .line 1046
    iget-object v0, p0, Lo/addOnChildAttachStateChangeListener$onNavigationEvent;->extraCallback:Lo/addOnChildAttachStateChangeListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->guideBottom:I

    invoke-virtual {v0, v1}, Lo/addOnChildAttachStateChangeListener;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/applyOptions;

    .line 1083
    iget p1, p1, Lo/unregisterAdapterDataObserver;->onNavigationEvent:F

    float-to-int p1, p1

    .line 1046
    invoke-virtual {v0, p1}, Lo/applyOptions;->setGuidelineEnd(I)V

    return-void
.end method
