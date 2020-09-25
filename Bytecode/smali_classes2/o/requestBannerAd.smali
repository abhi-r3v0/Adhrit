.class public final Lo/requestBannerAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/getAdUnitId;",
        ">;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/requestBannerAd;


# instance fields
.field private final onNavigationEvent:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/getAdUnitId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lo/requestBannerAd;

    invoke-direct {v0}, Lo/requestBannerAd;-><init>()V

    sput-object v0, Lo/requestBannerAd;->ICustomTabsCallback:Lo/requestBannerAd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    new-instance v0, Lo/DeepLinkUtils$CustomURLSpan;

    invoke-direct {v0}, Lo/DeepLinkUtils$CustomURLSpan;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/requestBannerAd;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/getAdUnitId;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/requestBannerAd;->onNavigationEvent:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 1
    sget-object v0, Lo/requestBannerAd;->ICustomTabsCallback:Lo/requestBannerAd;

    invoke-virtual {v0}, Lo/requestBannerAd;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdUnitId;

    invoke-interface {v0}, Lo/getAdUnitId;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public static ICustomTabsCallback$Stub()Z
    .locals 1

    .line 5
    sget-object v0, Lo/requestBannerAd;->ICustomTabsCallback:Lo/requestBannerAd;

    invoke-virtual {v0}, Lo/requestBannerAd;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdUnitId;

    invoke-interface {v0}, Lo/getAdUnitId;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public static asBinder()Z
    .locals 1

    .line 6
    sget-object v0, Lo/requestBannerAd;->ICustomTabsCallback:Lo/requestBannerAd;

    invoke-virtual {v0}, Lo/requestBannerAd;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdUnitId;

    invoke-interface {v0}, Lo/getAdUnitId;->asInterface()Z

    move-result v0

    return v0
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 2
    sget-object v0, Lo/requestBannerAd;->ICustomTabsCallback:Lo/requestBannerAd;

    invoke-virtual {v0}, Lo/requestBannerAd;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdUnitId;

    invoke-interface {v0}, Lo/getAdUnitId;->extraCallback()Z

    move-result v0

    return v0
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 3
    sget-object v0, Lo/requestBannerAd;->ICustomTabsCallback:Lo/requestBannerAd;

    invoke-virtual {v0}, Lo/requestBannerAd;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdUnitId;

    invoke-interface {v0}, Lo/getAdUnitId;->onPostMessage()Z

    move-result v0

    return v0
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 4
    sget-object v0, Lo/requestBannerAd;->ICustomTabsCallback:Lo/requestBannerAd;

    invoke-virtual {v0}, Lo/requestBannerAd;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdUnitId;

    invoke-interface {v0}, Lo/getAdUnitId;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public static onRelationshipValidationResult()Z
    .locals 1

    .line 7
    sget-object v0, Lo/requestBannerAd;->ICustomTabsCallback:Lo/requestBannerAd;

    invoke-virtual {v0}, Lo/requestBannerAd;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdUnitId;

    invoke-interface {v0}, Lo/getAdUnitId;->ICustomTabsCallback$Stub()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/requestBannerAd;->onNavigationEvent:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdUnitId;

    return-object v0
.end method
