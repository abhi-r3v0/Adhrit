.class public final Lo/CustomEventInterstitial;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/CustomEventAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Lo/CustomEventInterstitial;


# instance fields
.field private final onPostMessage:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/CustomEventAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/CustomEventInterstitial;

    invoke-direct {v0}, Lo/CustomEventInterstitial;-><init>()V

    sput-object v0, Lo/CustomEventInterstitial;->onMessageChannelReady:Lo/CustomEventInterstitial;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lo/SchedulingModule;

    invoke-direct {v0}, Lo/SchedulingModule;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/CustomEventInterstitial;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/CustomEventAdapter;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/CustomEventInterstitial;->onPostMessage:Lo/onPostExecute;

    return-void
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 2
    sget-object v0, Lo/CustomEventInterstitial;->onMessageChannelReady:Lo/CustomEventInterstitial;

    invoke-virtual {v0}, Lo/CustomEventInterstitial;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CustomEventAdapter;

    invoke-interface {v0}, Lo/CustomEventAdapter;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 1
    sget-object v0, Lo/CustomEventInterstitial;->onMessageChannelReady:Lo/CustomEventInterstitial;

    invoke-virtual {v0}, Lo/CustomEventInterstitial;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CustomEventAdapter;

    invoke-interface {v0}, Lo/CustomEventAdapter;->onPostMessage()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/CustomEventInterstitial;->onPostMessage:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CustomEventAdapter;

    return-object v0
.end method
