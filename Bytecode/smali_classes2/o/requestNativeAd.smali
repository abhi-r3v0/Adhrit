.class public final Lo/requestNativeAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/AdMobAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:Lo/requestNativeAd;


# instance fields
.field private final ICustomTabsCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/AdMobAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/requestNativeAd;

    invoke-direct {v0}, Lo/requestNativeAd;-><init>()V

    sput-object v0, Lo/requestNativeAd;->extraCallback:Lo/requestNativeAd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lo/MediationServerParameters$MappingException;

    invoke-direct {v0}, Lo/MediationServerParameters$MappingException;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/requestNativeAd;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/AdMobAdapter;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/requestNativeAd;->ICustomTabsCallback:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 1
    sget-object v0, Lo/requestNativeAd;->extraCallback:Lo/requestNativeAd;

    invoke-virtual {v0}, Lo/requestNativeAd;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AdMobAdapter;

    invoke-interface {v0}, Lo/AdMobAdapter;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 2
    sget-object v0, Lo/requestNativeAd;->extraCallback:Lo/requestNativeAd;

    invoke-virtual {v0}, Lo/requestNativeAd;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AdMobAdapter;

    invoke-interface {v0}, Lo/AdMobAdapter;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/requestNativeAd;->ICustomTabsCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AdMobAdapter;

    return-object v0
.end method
