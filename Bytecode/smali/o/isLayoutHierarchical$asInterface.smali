.class final synthetic Lo/isLayoutHierarchical$asInterface;
.super Lo/startListening;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutHierarchical;->ICustomTabsCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/startListening;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0002\u0008\u0002"
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
.field private synthetic onNavigationEvent:Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutHierarchical$asInterface;->onNavigationEvent:Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/startListening;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "onPermissionGranted"

    return-object v0
.end method

.method public final h_()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke()V"

    return-object v0
.end method

.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/isLayoutHierarchical$asInterface;->onNavigationEvent:Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;

    .line 1108
    invoke-virtual {v0}, Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;->ICustomTabsCallback()V

    .line 30
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/getQueryViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
