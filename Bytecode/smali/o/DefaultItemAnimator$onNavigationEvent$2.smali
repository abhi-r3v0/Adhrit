.class final Lo/DefaultItemAnimator$onNavigationEvent$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DefaultItemAnimator$onNavigationEvent;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/DefaultItemAnimator$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator$onNavigationEvent;II)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$onNavigationEvent$2;->onNavigationEvent:Lo/DefaultItemAnimator$onNavigationEvent;

    iput p2, p0, Lo/DefaultItemAnimator$onNavigationEvent$2;->extraCallback:I

    iput p3, p0, Lo/DefaultItemAnimator$onNavigationEvent$2;->onMessageChannelReady:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 101
    iget-object v0, p0, Lo/DefaultItemAnimator$onNavigationEvent$2;->onNavigationEvent:Lo/DefaultItemAnimator$onNavigationEvent;

    iget-object v0, v0, Lo/DefaultItemAnimator$onNavigationEvent;->extraCallback:Lo/DefaultItemAnimator;

    invoke-static {v0}, Lo/DefaultItemAnimator;->extraCallback(Lo/DefaultItemAnimator;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lo/DefaultItemAnimator$onNavigationEvent$2;->extraCallback:I

    iget v2, p0, Lo/DefaultItemAnimator$onNavigationEvent$2;->onMessageChannelReady:I

    sub-int/2addr v1, v2

    .line 1702
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    :cond_0
    return-void
.end method
