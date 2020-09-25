.class abstract Lo/ContentFrameLayout;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/getMinWidthMinor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final onPostMessage:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 8
    invoke-static {v0}, Lo/getHorizontalOffset;->onPostMessage(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method abstract onMessageChannelReady()Lo/getMinWidthMinor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
