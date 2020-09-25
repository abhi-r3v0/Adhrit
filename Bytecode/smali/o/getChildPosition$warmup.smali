.class public final Lo/getChildPosition$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildPosition;
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
.field final synthetic onPostMessage:Lo/getChildPosition;


# direct methods
.method public constructor <init>(Lo/getChildPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$warmup;->onPostMessage:Lo/getChildPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    iget-object p1, p0, Lo/getChildPosition$warmup;->onPostMessage:Lo/getChildPosition;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p1

    const-string/jumbo v0, "viewLifecycleOwner"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo/extraCallback;->extraCallback(Lo/toLegacyStreamType;)Lo/MediaControllerCompatApi23$TransportControls;

    move-result-object p1

    check-cast p1, Lo/isFromUser;

    new-instance v0, Lo/getChildPosition$warmup$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lo/getChildPosition$warmup$onPostMessage;-><init>(Lo/setSessionPersistenceKey;Lo/getChildPosition$warmup;)V

    check-cast v0, Lo/nextTransactionOrder;

    const/4 v2, 0x3

    .line 1001
    invoke-static {p1, v1, v1, v0, v2}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void
.end method
