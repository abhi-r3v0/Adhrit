.class public final Lo/onDismiss$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cancelPositionAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onDismiss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/rating/RatingInAppData;",
        "Lcom/dreamplug/androidapp/data/repository/inapp/InAppData;",
        "getRatingResponse",
        "Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;",
        "eventAttributes",
        "",
        "",
        "",
        "(Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;Ljava/util/Map;)V",
        "show",
        "",
        "fragmentActivity",
        "Landroidx/fragment/app/FragmentActivity;",
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
.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getRatingResponse"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventAttributes"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onDismiss$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;

    iput-object p2, p0, Lo/onDismiss$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/onSessionEvent;)V
    .locals 8

    const-string v0, "fragmentActivity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    sget-object v0, Lo/setLayoutResource;->onPostMessage:Lo/setLayoutResource$onMessageChannelReady;

    .line 1412
    invoke-static {}, Lo/setLayoutResource;->asInterface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    sget-object v0, Lo/setLayoutResource;->onPostMessage:Lo/setLayoutResource$onMessageChannelReady;

    iget-object v0, p0, Lo/onDismiss$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;

    iget-object v1, p0, Lo/onDismiss$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    const-string v2, "getRatingResponse"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventAttributes"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1414
    new-instance v3, Lo/setLayoutResource;

    invoke-direct {v3}, Lo/setLayoutResource;-><init>()V

    .line 1415
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1416
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1428
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1418
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1420
    :cond_0
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1421
    invoke-static {v0}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1422
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1010
    invoke-virtual {p1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v0, "RatingDialogFragment"

    invoke-virtual {v3, p1, v0}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
