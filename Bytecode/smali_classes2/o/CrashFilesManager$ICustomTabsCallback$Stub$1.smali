.class final Lo/CrashFilesManager$ICustomTabsCallback$Stub$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applyNonNullHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onPostMessage(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub$1;->onMessageChannelReady:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    const-string v0, "$experiments"

    .line 1042
    iget-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub$1;->onMessageChannelReady:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MixpanelAPI.ViewCrawler"

    const-string v2, "Can\'t write $experiments super property"

    .line 1044
    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->asInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method
