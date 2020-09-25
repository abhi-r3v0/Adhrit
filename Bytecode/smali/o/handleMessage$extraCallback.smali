.class final Lo/handleMessage$extraCallback;
.super Lo/getRoot;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/handleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic asBinder:Lo/handleMessage;


# direct methods
.method public constructor <init>(Lo/handleMessage;Landroid/content/Context;Lo/getItem;Landroid/view/View;)V
    .locals 6

    .line 733
    iput-object p1, p0, Lo/handleMessage$extraCallback;->asBinder:Lo/handleMessage;

    .line 734
    sget v5, Lo/extraCallback$ICustomTabsCallback;->actionOverflowMenuStyle:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lo/getRoot;-><init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;ZI)V

    .line 736
    invoke-virtual {p3}, Lo/getItem;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Lo/MediaBrowserCompat;

    .line 1702
    iget p2, p2, Lo/MediaBrowserCompat;->onTransact:I

    const/16 p3, 0x20

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 739
    iget-object p2, p1, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    if-nez p2, :cond_1

    invoke-static {p1}, Lo/handleMessage;->ICustomTabsCallback(Lo/handleMessage;)Lo/getExtras;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    .line 2105
    :goto_1
    iput-object p2, p0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    .line 742
    :cond_2
    iget-object p1, p1, Lo/handleMessage;->warmup:Lo/handleMessage$onRelationshipValidationResult;

    .line 2325
    iput-object p1, p0, Lo/getRoot;->ICustomTabsCallback:Lo/getSessionToken$extraCallback;

    .line 2326
    iget-object p2, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-eqz p2, :cond_3

    .line 2327
    iget-object p2, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {p2, p1}, Lo/getServiceComponent;->onMessageChannelReady(Lo/getSessionToken$extraCallback;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 747
    iget-object v0, p0, Lo/handleMessage$extraCallback;->asBinder:Lo/handleMessage;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/handleMessage;->ICustomTabsCallback$Stub$Proxy:Lo/handleMessage$extraCallback;

    .line 750
    invoke-super {p0}, Lo/getRoot;->ICustomTabsCallback()V

    return-void
.end method
