.class final Lo/suppressLayout;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
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
.field private synthetic ICustomTabsCallback:I

.field private synthetic onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;II)V
    .locals 0

    iput-object p1, p0, Lo/suppressLayout;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    iput p2, p0, Lo/suppressLayout;->onMessageChannelReady:I

    iput p3, p0, Lo/suppressLayout;->ICustomTabsCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 176
    iget-object v0, p0, Lo/suppressLayout;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 1077
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 176
    iget v1, p0, Lo/suppressLayout;->onMessageChannelReady:I

    iget v2, p0, Lo/suppressLayout;->ICustomTabsCallback:I

    sub-int/2addr v1, v2

    .line 1702
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    return-void
.end method
