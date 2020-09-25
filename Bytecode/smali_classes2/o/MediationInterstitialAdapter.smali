.class public final Lo/MediationInterstitialAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/getAdditionalParametersType;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:Lo/MediationInterstitialAdapter;


# instance fields
.field private final onPostMessage:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/getAdditionalParametersType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/MediationInterstitialAdapter;

    invoke-direct {v0}, Lo/MediationInterstitialAdapter;-><init>()V

    sput-object v0, Lo/MediationInterstitialAdapter;->extraCallback:Lo/MediationInterstitialAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lo/destroy;

    invoke-direct {v0}, Lo/destroy;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/MediationInterstitialAdapter;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/getAdditionalParametersType;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/MediationInterstitialAdapter;->onPostMessage:Lo/onPostExecute;

    return-void
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 2
    sget-object v0, Lo/MediationInterstitialAdapter;->extraCallback:Lo/MediationInterstitialAdapter;

    invoke-virtual {v0}, Lo/MediationInterstitialAdapter;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdditionalParametersType;

    invoke-interface {v0}, Lo/getAdditionalParametersType;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 1
    sget-object v0, Lo/MediationInterstitialAdapter;->extraCallback:Lo/MediationInterstitialAdapter;

    invoke-virtual {v0}, Lo/MediationInterstitialAdapter;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdditionalParametersType;

    invoke-interface {v0}, Lo/getAdditionalParametersType;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/MediationInterstitialAdapter;->onPostMessage:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAdditionalParametersType;

    return-object v0
.end method
