.class final Lo/ensureMenuView$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureMenuView;->onCreate(Landroid/os/Bundle;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/androidapp/login/LoginActivity$onCreate$14$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/ensureMenuView;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/ensureMenuView$extraCallback;->onPostMessage:Lo/ensureMenuView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 12

    .line 1207
    iget-object v0, p0, Lo/ensureMenuView$extraCallback;->onPostMessage:Lo/ensureMenuView;

    .line 2037
    iget-object v0, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v0, :cond_0

    const-string/jumbo v1, "viewModel"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2078
    :cond_0
    iget-object v0, v0, Lo/getContentInsetStart;->onRelationshipValidationResult:Lo/appendViewToAllSpans$extraCallback;

    if-nez v0, :cond_1

    const-string/jumbo v1, "snackBarViewModel"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2145
    :cond_1
    iget-object v0, v0, Lo/appendViewToAllSpans$extraCallback;->onPostMessage:Lo/setActive;

    .line 1207
    new-instance v1, Lo/getThumbTintList;

    new-instance v11, Lo/appendViewToAllSpans$onNavigationEvent;

    iget-object v3, p0, Lo/ensureMenuView$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lo/appendViewToAllSpans$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/appendViewToAllSpans$ICustomTabsCallback;JIZI)V

    invoke-direct {v1, v11}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1208
    iget-object v0, p0, Lo/ensureMenuView$extraCallback;->onPostMessage:Lo/ensureMenuView;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 35
    :cond_2
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
