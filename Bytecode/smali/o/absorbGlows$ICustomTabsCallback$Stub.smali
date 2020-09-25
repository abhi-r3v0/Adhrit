.class public final Lo/absorbGlows$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/replaceAllInsert;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/absorbGlows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/referal/FabrikShareReferralFragment$setPageListener$1",
        "Lcom/dreamplug/utils/DefaultViewPagerOnPageChangeListener;",
        "onPageSelected",
        "",
        "position",
        "",
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
.field private synthetic onNavigationEvent:Lo/absorbGlows;


# direct methods
.method constructor <init>(Lo/absorbGlows;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lo/absorbGlows$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/absorbGlows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1043
    new-instance v3, Lo/addWrite;

    const-string v4, "card_index"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v3, v1, p1

    .line 188
    iget-object p1, p0, Lo/absorbGlows$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/absorbGlows;

    invoke-static {p1}, Lo/absorbGlows;->ICustomTabsCallback(Lo/absorbGlows;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "card_count"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const-string p1, "pairs"

    .line 186
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "referral_bs_carousel_scroll"

    .line 186
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onMessageChannelReady(IF)V
    .locals 0

    return-void
.end method
