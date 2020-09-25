.class final Lo/handleMessage$onMessageChannelReady;
.super Lo/getRoot;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/handleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final synthetic asBinder:Lo/handleMessage;


# direct methods
.method public constructor <init>(Lo/handleMessage;Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;)V
    .locals 6

    .line 715
    iput-object p1, p0, Lo/handleMessage$onMessageChannelReady;->asBinder:Lo/handleMessage;

    .line 716
    sget v5, Lo/extraCallback$ICustomTabsCallback;->actionOverflowMenuStyle:I

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lo/getRoot;-><init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 1132
    iput p2, p0, Lo/getRoot;->onPostMessage:I

    .line 718
    iget-object p1, p1, Lo/handleMessage;->warmup:Lo/handleMessage$onRelationshipValidationResult;

    .line 1325
    iput-object p1, p0, Lo/getRoot;->ICustomTabsCallback:Lo/getSessionToken$extraCallback;

    .line 1326
    iget-object p2, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-eqz p2, :cond_0

    .line 1327
    iget-object p2, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {p2, p1}, Lo/getServiceComponent;->onMessageChannelReady(Lo/getSessionToken$extraCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 723
    iget-object v0, p0, Lo/handleMessage$onMessageChannelReady;->asBinder:Lo/handleMessage;

    invoke-static {v0}, Lo/handleMessage;->onPostMessage(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lo/handleMessage$onMessageChannelReady;->asBinder:Lo/handleMessage;

    invoke-static {v0}, Lo/handleMessage;->extraCallback(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object v0

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->close()V

    .line 726
    :cond_0
    iget-object v0, p0, Lo/handleMessage$onMessageChannelReady;->asBinder:Lo/handleMessage;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    .line 728
    invoke-super {p0}, Lo/getRoot;->ICustomTabsCallback()V

    return-void
.end method
