.class final Landroidx/lifecycle/LiveData$onNavigationEvent;
.super Landroidx/lifecycle/LiveData$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.extraCallback;"
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPlaybackToRemote<",
            "-TT;>;)V"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Landroidx/lifecycle/LiveData$onNavigationEvent;->onMessageChannelReady:Landroidx/lifecycle/LiveData;

    .line 451
    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/LiveData$extraCallback;-><init>(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
