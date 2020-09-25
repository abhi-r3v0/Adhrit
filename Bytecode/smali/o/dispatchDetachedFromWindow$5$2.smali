.class final Lo/dispatchDetachedFromWindow$5$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchDetachedFromWindow$5;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field public static final onPostMessage:Lo/dispatchDetachedFromWindow$5$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/dispatchDetachedFromWindow$5$2;

    invoke-direct {v0}, Lo/dispatchDetachedFromWindow$5$2;-><init>()V

    sput-object v0, Lo/dispatchDetachedFromWindow$5$2;->onPostMessage:Lo/dispatchDetachedFromWindow$5$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1031
    sget-object p1, Lo/dispatchDetachedFromWindow;->onNavigationEvent:Lo/dispatchDetachedFromWindow;

    .line 2000
    sget-object p1, Lo/dispatchDetachedFromWindow;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/removeAndRecycleView;

    .line 2041
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->mayLaunchUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "remote_control"

    .line 2043
    invoke-interface {p1, v0, v2, v1}, Lo/removeAndRecycleView;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;I)Lo/clearScrap;

    move-result-object p1

    .line 1129
    new-instance v0, Lo/dispatchDetachedFromWindow$ICustomTabsCallback;

    invoke-direct {v0}, Lo/dispatchDetachedFromWindow$ICustomTabsCallback;-><init>()V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 24
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
