.class final Lo/setUserVisibleHint$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setUserVisibleHint;->ICustomTabsCallback(Lo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/setUserVisibleHint;

.field final synthetic onMessageChannelReady:Lo/onDisconnectSetValue;


# direct methods
.method constructor <init>(Lo/setUserVisibleHint;Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lo/setUserVisibleHint$onMessageChannelReady;->ICustomTabsCallback:Lo/setUserVisibleHint;

    iput-object p2, p0, Lo/setUserVisibleHint$onMessageChannelReady;->onMessageChannelReady:Lo/onDisconnectSetValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1066
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    const-string v1, "context"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1066
    :cond_0
    check-cast v0, Landroid/content/Context;

    const-string v2, "android.permission.READ_SMS"

    invoke-static {v0, v2}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 2072
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 2122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2072
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2073
    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "count(*)"

    .line 2074
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v8, "LENGTH(address) < 10"

    .line 2072
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2079
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2080
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    if-nez v0, :cond_8

    .line 3091
    new-instance v0, Landroid/content/Intent;

    const-string v5, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.miui.securitycenter"

    const-string v7, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    .line 3092
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.dreamplug.androidapp"

    const-string v8, "extra_pkgname"

    .line 3096
    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3097
    sget-object v9, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 3122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3097
    :cond_4
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    const-string/jumbo v10, "resolveInfoList"

    .line 3098
    invoke-static {v9, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v4

    :goto_2
    if-nez v0, :cond_7

    .line 4106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    .line 4107
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4111
    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4112
    sget-object v5, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 4122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4112
    :cond_6
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4113
    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_8

    :cond_7
    move-object v4, v0

    .line 48
    :cond_8
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v1, Lo/setUserVisibleHint$onMessageChannelReady$4;

    invoke-direct {v1, p0, v4}, Lo/setUserVisibleHint$onMessageChannelReady$4;-><init>(Lo/setUserVisibleHint$onMessageChannelReady;Landroid/content/Intent;)V

    check-cast v1, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    return-void
.end method
