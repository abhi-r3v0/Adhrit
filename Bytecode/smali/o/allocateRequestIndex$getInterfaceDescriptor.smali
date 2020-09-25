.class final Lo/allocateRequestIndex$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/allocateRequestIndex;->onMessageChannelReady(Lo/getAllowReturnTransitionOverlap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/allocateRequestIndex;


# direct methods
.method constructor <init>(Lo/allocateRequestIndex;)V
    .locals 0

    iput-object p1, p0, Lo/allocateRequestIndex$getInterfaceDescriptor;->ICustomTabsCallback:Lo/allocateRequestIndex;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1182
    iget-object v0, p0, Lo/allocateRequestIndex$getInterfaceDescriptor;->ICustomTabsCallback:Lo/allocateRequestIndex;

    invoke-static {v0}, Lo/allocateRequestIndex;->onNavigationEvent(Lo/allocateRequestIndex;)Lo/onDestroyView;

    move-result-object v0

    invoke-static {v0}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 1183
    iget-object v0, p0, Lo/allocateRequestIndex$getInterfaceDescriptor;->ICustomTabsCallback:Lo/allocateRequestIndex;

    invoke-static {v0}, Lo/allocateRequestIndex;->asBinder(Lo/allocateRequestIndex;)Lo/requestPermissionsFromFragment;

    move-result-object v0

    invoke-virtual {v0}, Lo/requestPermissionsFromFragment;->extraCallback()V

    .line 53
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
