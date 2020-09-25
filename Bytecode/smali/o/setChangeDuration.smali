.class public final Lo/setChangeDuration;
.super Landroidx/lifecycle/LiveData;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lo/getThumbTintList<",
        "+",
        "Lo/setRemoveDuration;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u0006\u0010\u0008\u001a\u00020\u0006J\u001a\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u001a\u0010\r\u001a\u00020\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bJ\u001a\u0010\u0010\u001a\u00020\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00112\u0006\u0010\n\u001a\u00020\u000bJ\u001a\u0010\u0012\u001a\u00020\u00062\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u001a\u0010\u0015\u001a\u00020\u00062\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommandData;",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand;",
        "()V",
        "postValue",
        "",
        "command",
        "refreshLifestyle",
        "setScreenData",
        "source",
        "",
        "section",
        "showControlCard",
        "id",
        "showControlSection",
        "showLifestyleCard",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RewardIdentifier;",
        "showStoreCard",
        "cardId",
        "showTrack",
        "showWinCard",
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
.field public static final asInterface:Lo/setChangeDuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/setChangeDuration;

    invoke-direct {v0}, Lo/setChangeDuration;-><init>()V

    sput-object v0, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/setChangeDuration;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "source"

    .line 41
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2042
    new-instance v0, Lo/setRemoveDuration$extraCallback$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/setRemoveDuration$extraCallback$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lo/setRemoveDuration;

    .line 3010
    new-instance p1, Lo/getThumbTintList;

    invoke-direct {p1, v0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic onMessageChannelReady(Lo/setChangeDuration;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "source"

    .line 21
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    new-instance v0, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;-><init>(Lo/removeItemDecoration;Ljava/lang/String;)V

    check-cast v0, Lo/setRemoveDuration;

    .line 2010
    new-instance p1, Lo/getThumbTintList;

    invoke-direct {p1, v0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
