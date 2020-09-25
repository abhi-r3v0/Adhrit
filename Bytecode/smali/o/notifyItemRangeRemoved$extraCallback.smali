.class final Lo/notifyItemRangeRemoved$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyItemRangeRemoved;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic onMessageChannelReady:Lo/notifyItemRangeRemoved;


# direct methods
.method constructor <init>(Lo/notifyItemRangeRemoved;)V
    .locals 0

    iput-object p1, p0, Lo/notifyItemRangeRemoved$extraCallback;->onMessageChannelReady:Lo/notifyItemRangeRemoved;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 47
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 2043
    new-instance v1, Lo/addWrite;

    const-string v2, "profile_pic_medium"

    const-string v3, "camera"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "pairs"

    .line 1079
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "profile_pic_select"

    .line 1079
    invoke-static {v0, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1080
    iget-object v0, p0, Lo/notifyItemRangeRemoved$extraCallback;->onMessageChannelReady:Lo/notifyItemRangeRemoved;

    .line 2151
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    const-string v2, "android.permission.CAMERA"

    .line 3146
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2152
    invoke-virtual {v0}, Lo/notifyItemRangeRemoved;->onPostMessage()V

    goto :goto_0

    .line 3159
    :cond_1
    iget-boolean v1, v0, Lo/notifyItemRangeRemoved;->ICustomTabsCallback:Z

    if-eqz v1, :cond_2

    .line 3160
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 3162
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f1300a7

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v4, 0x30

    invoke-static {v1, v3, v4, p1}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 3168
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3169
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3170
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0xc

    .line 3171
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
