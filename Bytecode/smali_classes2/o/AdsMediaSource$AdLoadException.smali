.class public final Lo/AdsMediaSource$AdLoadException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/setStreamKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/AdsMediaSource$AdLoadException;


# instance fields
.field private final onMessageChannelReady:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/setStreamKeys;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/AdsMediaSource$AdLoadException;

    invoke-direct {v0}, Lo/AdsMediaSource$AdLoadException;-><init>()V

    sput-object v0, Lo/AdsMediaSource$AdLoadException;->ICustomTabsCallback:Lo/AdsMediaSource$AdLoadException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lo/HlsMediaSource$Factory;

    invoke-direct {v0}, Lo/HlsMediaSource$Factory;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/AdsMediaSource$AdLoadException;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/setStreamKeys;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/AdsMediaSource$AdLoadException;->onMessageChannelReady:Lo/onPostExecute;

    return-void
.end method

.method public static onNavigationEvent()J
    .locals 2

    .line 1
    sget-object v0, Lo/AdsMediaSource$AdLoadException;->ICustomTabsCallback:Lo/AdsMediaSource$AdLoadException;

    invoke-virtual {v0}, Lo/AdsMediaSource$AdLoadException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setStreamKeys;

    invoke-interface {v0}, Lo/setStreamKeys;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/AdsMediaSource$AdLoadException;->onMessageChannelReady:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setStreamKeys;

    return-object v0
.end method
