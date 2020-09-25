.class final Lo/UnknownFragment;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setContent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setContent<",
        "Lo/ButtonFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onPostMessage:Lo/Thumbnail;


# direct methods
.method constructor <init>(Lo/Thumbnail;)V
    .locals 0

    iput-object p1, p0, Lo/UnknownFragment;->onPostMessage:Lo/Thumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/UnknownFragment;->onPostMessage:Lo/Thumbnail;

    invoke-static {v0}, Lo/Thumbnail;->onMessageChannelReady(Lo/Thumbnail;)V

    return-void
.end method

.method public final synthetic onNavigationEvent()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lo/UnknownFragment;->onPostMessage:Lo/Thumbnail;

    invoke-virtual {v0}, Lo/Thumbnail;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/ButtonFragment;

    return-object v0
.end method
