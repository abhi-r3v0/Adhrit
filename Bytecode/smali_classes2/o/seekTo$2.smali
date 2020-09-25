.class final Lo/seekTo$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fastForward$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/seekTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/fastForward$extraCallback<",
        "Lo/getPlaybackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 336
    check-cast p1, Lo/getPlaybackState;

    .line 1339
    invoke-virtual {p1, p2}, Lo/getPlaybackState;->onMessageChannelReady(Landroid/graphics/Rect;)V

    return-void
.end method
