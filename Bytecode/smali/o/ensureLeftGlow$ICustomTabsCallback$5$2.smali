.class final Lo/ensureLeftGlow$ICustomTabsCallback$5$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureLeftGlow$ICustomTabsCallback$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
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


# instance fields
.field private synthetic onPostMessage:Lo/ensureLeftGlow$ICustomTabsCallback$5;


# direct methods
.method constructor <init>(Lo/ensureLeftGlow$ICustomTabsCallback$5;)V
    .locals 0

    iput-object p1, p0, Lo/ensureLeftGlow$ICustomTabsCallback$5$2;->onPostMessage:Lo/ensureLeftGlow$ICustomTabsCallback$5;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1077
    iget-object p1, p0, Lo/ensureLeftGlow$ICustomTabsCallback$5$2;->onPostMessage:Lo/ensureLeftGlow$ICustomTabsCallback$5;

    iget-object p1, p1, Lo/ensureLeftGlow$ICustomTabsCallback$5;->onMessageChannelReady:Lo/ensureLeftGlow$ICustomTabsCallback;

    iget-object p1, p1, Lo/ensureLeftGlow$ICustomTabsCallback;->ICustomTabsCallback:Lo/ensureLeftGlow;

    invoke-static {p1}, Lo/ensureLeftGlow;->onNavigationEvent(Lo/ensureLeftGlow;)Lo/setSpeed;

    move-result-object p1

    .line 1116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p1, :cond_0

    check-cast p1, Lo/setMaxFrame;

    .line 1077
    check-cast p1, Lo/getComposition;

    .line 2459
    iget-object p2, p1, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    const v0, 0x7f080456

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x1

    .line 3433
    invoke-virtual {p1, v0, p2}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    new-array p2, p1, [Lo/addWrite;

    const/4 v1, 0x0

    .line 4043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "source"

    const-string/jumbo v4, "whatsappfragmet"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p2, v1

    .line 5043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "status"

    const-string v3, "failure"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p2, v0

    const-string v0, "pairs"

    .line 1078
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "referral_campaign_image_load"

    .line 1078
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 28
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2215
    throw p1
.end method
