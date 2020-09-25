.class public final Lo/getThumbDrawable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/instantiateProvider;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/auth/AuthInterfaceImpl;",
        "Lcom/dreamplug/auth/helpers/AuthInterface;",
        "()V",
        "logout",
        "",
        "context",
        "Landroid/content/Context;",
        "response",
        "Lokhttp3/Response;",
        "triggerAuthRefresh",
        "onUpdateListener",
        "Lcom/dreamplug/auth/helpers/OnAuthUpdateListener;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getThumbDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lo/getThumbDrawable;

    invoke-direct {v0}, Lo/getThumbDrawable;-><init>()V

    sput-object v0, Lo/getThumbDrawable;->onMessageChannelReady:Lo/getThumbDrawable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/RemoteActionCompat;)V
    .locals 4

    const-string v0, "onUpdateListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3020
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    const-class v0, Lo/setThumbTintMode;

    invoke-static {v0}, Lo/factorInBindTime;->onPostMessage(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setThumbTintMode;

    .line 3021
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4097
    sget-object v2, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    if-eqz v2, :cond_0

    .line 3024
    invoke-interface {v2}, Lo/checkCompatWrapper;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "refreshToken"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "grantType"

    const-string v3, "refresh_token"

    .line 3026
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    new-instance v2, Lcom/dreamplug/androidapp/auth/AuthRequestClass;

    const-string v3, "legos"

    invoke-direct {v2, v3, v1}, Lcom/dreamplug/androidapp/auth/AuthRequestClass;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v2}, Lo/setThumbTintMode;->onNavigationEvent(Lcom/dreamplug/androidapp/auth/AuthRequestClass;)Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    .line 3029
    new-instance v1, Lo/applyTrackTint$5;

    invoke-direct {v1, p1}, Lo/applyTrackTint$5;-><init>(Lo/RemoteActionCompat;)V

    const-string p1, "AuthRefreshCommand"

    const-string/jumbo v2, "tag"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7044
    iget-object p1, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v0, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/content/Context;Lo/childAddedChange;)V
    .locals 5

    const-string v0, "$this$debugStackTrace"

    const-string v1, "context"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "response"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 1000
    sget-object v1, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 1177
    :try_start_0
    iget-object p2, p2, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz p2, :cond_0

    .line 21
    invoke-virtual {p2}, Lo/getChildKey;->onPostMessage()[B

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lo/applyOperationToSyncPoints;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 22
    :goto_0
    sget-object p2, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->extraCallback()Lo/writeStringNoTag;

    move-result-object p2

    const-class v3, Lcom/dreamplug/utils/model/BaseResponse;

    if-nez v2, :cond_1

    move-object p2, v1

    goto :goto_1

    .line 1845
    :cond_1
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {p2, v4, v3}, Lo/writeStringNoTag;->extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 1818
    :goto_1
    invoke-static {v3}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 22
    check-cast p2, Lcom/dreamplug/utils/model/BaseResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 26
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3005
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {}, Lo/replaceAll;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3006
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 24
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2005
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {}, Lo/replaceAll;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2006
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    move-object p2, v1

    .line 28
    :goto_3
    new-instance v0, Lo/inflateMenu;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-direct {v0, v1}, Lo/inflateMenu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/inflateMenu;->onPostMessage(Landroid/content/Context;)V

    :cond_4
    return-void
.end method
