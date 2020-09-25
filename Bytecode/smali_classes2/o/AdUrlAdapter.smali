.class public final Lo/AdUrlAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/MediationBannerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Lo/AdUrlAdapter;


# instance fields
.field private final extraCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/MediationBannerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/AdUrlAdapter;

    invoke-direct {v0}, Lo/AdUrlAdapter;-><init>()V

    sput-object v0, Lo/AdUrlAdapter;->onMessageChannelReady:Lo/AdUrlAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lo/getServerParametersType;

    invoke-direct {v0}, Lo/getServerParametersType;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/AdUrlAdapter;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/MediationBannerAdapter;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/AdUrlAdapter;->extraCallback:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 2
    sget-object v0, Lo/AdUrlAdapter;->onMessageChannelReady:Lo/AdUrlAdapter;

    invoke-virtual {v0}, Lo/AdUrlAdapter;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediationBannerAdapter;

    invoke-interface {v0}, Lo/MediationBannerAdapter;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 1
    sget-object v0, Lo/AdUrlAdapter;->onMessageChannelReady:Lo/AdUrlAdapter;

    invoke-virtual {v0}, Lo/AdUrlAdapter;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediationBannerAdapter;

    invoke-interface {v0}, Lo/MediationBannerAdapter;->onNavigationEvent()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/AdUrlAdapter;->extraCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediationBannerAdapter;

    return-object v0
.end method
