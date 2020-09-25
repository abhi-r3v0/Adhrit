.class final Lo/setTrackTintMode$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTrackTintMode;->onMessageChannelReady()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field public static final onMessageChannelReady:Lo/setTrackTintMode$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setTrackTintMode$onPostMessage;

    invoke-direct {v0}, Lo/setTrackTintMode$onPostMessage;-><init>()V

    sput-object v0, Lo/setTrackTintMode$onPostMessage;->onMessageChannelReady:Lo/setTrackTintMode$onPostMessage;

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
    .locals 2

    .line 1059
    sget-object v0, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/onActivityPostCreated;->extraCallback(I)V

    .line 1060
    sget-object v0, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    const-string v0, "contact_invite"

    const-string/jumbo v1, "sync request called"

    .line 2028
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    new-instance v0, Lo/onActivityPostCreated$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/onActivityPostCreated$onPostMessage;-><init>(Lo/ReflectiveGenericLifecycleObserver;)V

    check-cast v0, Lo/setChildInsets;

    invoke-static {v0}, Lo/onActivityPostCreated;->ICustomTabsCallback(Lo/setChildInsets;)V

    .line 1061
    sget-object v0, Lo/makeLayout;->extraCallback:Lo/makeLayout;

    .line 4000
    sget-object v0, Lo/makeLayout;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onPopulateAccessibilityEvent;

    .line 3014
    invoke-interface {v0}, Lo/onPopulateAccessibilityEvent;->extraCallback()Lo/clearScrap;

    move-result-object v0

    new-instance v1, Lo/makeLayout$onMessageChannelReady;

    invoke-direct {v1}, Lo/makeLayout$onMessageChannelReady;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 32
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
