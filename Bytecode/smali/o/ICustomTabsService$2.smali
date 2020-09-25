.class Lo/ICustomTabsService$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ArrayCreatingInputMerger$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ICustomTabsService;->cancel()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/ICustomTabsService;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lo/ICustomTabsService$2;->onMessageChannelReady:Lo/ICustomTabsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;
    .locals 4

    .line 942
    invoke-virtual {p2}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v0

    .line 943
    iget-object v1, p0, Lo/ICustomTabsService$2;->onMessageChannelReady:Lo/ICustomTabsService;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lo/ICustomTabsService;->extraCallback(Lo/getVolumeAttributes;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 947
    invoke-virtual {p2}, Lo/getVolumeAttributes;->onPostMessage()I

    move-result v0

    .line 949
    invoke-virtual {p2}, Lo/getVolumeAttributes;->ICustomTabsCallback()I

    move-result v2

    .line 950
    invoke-virtual {p2}, Lo/getVolumeAttributes;->onNavigationEvent()I

    move-result v3

    .line 946
    invoke-virtual {p2, v0, v1, v2, v3}, Lo/getVolumeAttributes;->ICustomTabsCallback(IIII)Lo/getVolumeAttributes;

    move-result-object p2

    .line 954
    :cond_0
    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;

    move-result-object p1

    return-object p1
.end method
