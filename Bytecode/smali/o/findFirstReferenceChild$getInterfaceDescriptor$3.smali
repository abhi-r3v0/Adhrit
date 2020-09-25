.class final Lo/findFirstReferenceChild$getInterfaceDescriptor$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findFirstReferenceChild$getInterfaceDescriptor;
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
.field private synthetic extraCallback:Ljava/util/List;

.field private synthetic onMessageChannelReady:Lo/findFirstReferenceChild$getInterfaceDescriptor;


# direct methods
.method constructor <init>(Lo/findFirstReferenceChild$getInterfaceDescriptor;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/findFirstReferenceChild$getInterfaceDescriptor$3;->onMessageChannelReady:Lo/findFirstReferenceChild$getInterfaceDescriptor;

    iput-object p2, p0, Lo/findFirstReferenceChild$getInterfaceDescriptor$3;->extraCallback:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1192
    iget-object v0, p0, Lo/findFirstReferenceChild$getInterfaceDescriptor$3;->onMessageChannelReady:Lo/findFirstReferenceChild$getInterfaceDescriptor;

    iget-object v0, v0, Lo/findFirstReferenceChild$getInterfaceDescriptor;->ICustomTabsCallback:Lo/findFirstReferenceChild;

    invoke-static {v0}, Lo/findFirstReferenceChild;->asBinder(Lo/findFirstReferenceChild;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    iget-object v1, p0, Lo/findFirstReferenceChild$getInterfaceDescriptor$3;->extraCallback:Ljava/util/List;

    const-string v2, "it"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {v0, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 45
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
