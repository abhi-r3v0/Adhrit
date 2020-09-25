.class final Lo/absorbGlows$extraCallback$1$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/absorbGlows$extraCallback$1;
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
.field private synthetic onNavigationEvent:Lo/absorbGlows$extraCallback$1;


# direct methods
.method constructor <init>(Lo/absorbGlows$extraCallback$1;)V
    .locals 0

    iput-object p1, p0, Lo/absorbGlows$extraCallback$1$3;->onNavigationEvent:Lo/absorbGlows$extraCallback$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 p1, 0x2

    new-array p2, p1, [Lo/addWrite;

    .line 1125
    iget-object v0, p0, Lo/absorbGlows$extraCallback$1$3;->onNavigationEvent:Lo/absorbGlows$extraCallback$1;

    iget-object v0, v0, Lo/absorbGlows$extraCallback$1;->extraCallback:Lo/absorbGlows$extraCallback;

    iget-object v0, v0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v0}, Lo/absorbGlows;->onNavigationEvent(Lo/absorbGlows;)Ljava/lang/String;

    move-result-object v0

    .line 2043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "source"

    invoke-direct {v1, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v1, p2, v0

    .line 3043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v1, "status"

    const-string v2, "failure"

    invoke-direct {v0, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "pairs"

    .line 1124
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "referral_campaign_image_load"

    .line 1124
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1126
    iget-object p1, p0, Lo/absorbGlows$extraCallback$1$3;->onNavigationEvent:Lo/absorbGlows$extraCallback$1;

    iget-object p1, p1, Lo/absorbGlows$extraCallback$1;->extraCallback:Lo/absorbGlows$extraCallback;

    iget-object p1, p1, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->shareImage:I

    invoke-virtual {p1, p2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string/jumbo p2, "shareImage"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 3216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p1, :cond_0

    check-cast p1, Lo/setMaxFrame;

    .line 1126
    check-cast p1, Lo/getComposition;

    .line 4459
    iget-object p2, p1, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    const v0, 0x7f080456

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 5433
    invoke-virtual {p1, v1, p2}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 34
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4215
    throw p1
.end method
