.class public final Lo/MediaControllerCompatApi24$TransportControls$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaControllerCompatApi24$TransportControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private extraCallback:I

.field final onNavigationEvent:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "-TV;>;"
        }
    .end annotation
.end field

.field public final onPostMessage:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TV;>;",
            "Lo/setPlaybackToRemote<",
            "-TV;>;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->extraCallback:I

    .line 136
    iput-object p1, p0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onPostMessage:Landroidx/lifecycle/LiveData;

    .line 137
    iput-object p2, p0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onNavigationEvent:Lo/setPlaybackToRemote;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 150
    iget v0, p0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->extraCallback:I

    iget-object v1, p0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onPostMessage:Landroidx/lifecycle/LiveData;

    .line 1328
    iget v1, v1, Landroidx/lifecycle/LiveData;->onRelationshipValidationResult:I

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onPostMessage:Landroidx/lifecycle/LiveData;

    .line 2328
    iget v0, v0, Landroidx/lifecycle/LiveData;->onRelationshipValidationResult:I

    .line 151
    iput v0, p0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->extraCallback:I

    .line 152
    iget-object v0, p0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onNavigationEvent:Lo/setPlaybackToRemote;

    invoke-interface {v0, p1}, Lo/setPlaybackToRemote;->onNavigationEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
