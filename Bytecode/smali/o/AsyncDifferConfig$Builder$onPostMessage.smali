.class public final Lo/AsyncDifferConfig$Builder$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setBackgroundThreadExecutor$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncDifferConfig$Builder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/link/CardLinkFragment$descriptionSheetListener$1",
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkReasonDescriptionBottomSheet$BottomSheetInterface;",
        "onCancel",
        "",
        "onProceed",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;


# direct methods
.method constructor <init>(Lo/AsyncDifferConfig$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$onPostMessage;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 6

    .line 110
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onPostMessage;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback$Stub$Proxy(Lo/AsyncDifferConfig$Builder;)Lo/setBackgroundThreadExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    :cond_0
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onPostMessage;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v0

    invoke-virtual {v0}, Lo/getCurrentList;->ICustomTabsCallback()V

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 1043
    new-instance v3, Lo/addWrite;

    const-string v4, "cta_type"

    const-string v5, "proceed_description"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 112
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "link_card_select_screen_cta"

    .line 112
    invoke-static {v0, v2}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 6

    .line 118
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onPostMessage;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback$Stub$Proxy(Lo/AsyncDifferConfig$Builder;)Lo/setBackgroundThreadExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "cta_type"

    const-string v5, "cancel_description"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 119
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "link_card_select_screen_cta"

    .line 119
    invoke-static {v0, v2}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
