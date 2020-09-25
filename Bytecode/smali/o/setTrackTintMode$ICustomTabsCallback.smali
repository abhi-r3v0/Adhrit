.class final Lo/setTrackTintMode$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTrackTintMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/setCollapseContentDescription;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/androidapp/helper/sharedpref/SharedPrefWrapper;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/setTrackTintMode$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setTrackTintMode$ICustomTabsCallback;

    invoke-direct {v0}, Lo/setTrackTintMode$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/setTrackTintMode$ICustomTabsCallback;->onMessageChannelReady:Lo/setTrackTintMode$ICustomTabsCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1039
    sget-object v0, Lo/setCollapseContentDescription;->ICustomTabsCallback:Lo/setCollapseContentDescription$onPostMessage;

    .line 2022
    new-instance v0, Lo/setCollapseContentDescription;

    invoke-direct {v0}, Lo/setCollapseContentDescription;-><init>()V

    .line 2023
    sget-object v1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 2122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2023
    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    const/4 v2, 0x0

    const-string v3, "persistent"

    invoke-static {v1, v3, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/content/ContextWrapper;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3012
    iput-object v1, v0, Lo/setCollapseContentDescription;->onNavigationEvent:Landroid/content/SharedPreferences;

    return-object v0
.end method
