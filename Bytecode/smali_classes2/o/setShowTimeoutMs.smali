.class public final Lo/setShowTimeoutMs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/setShowShuffleButton;",
        ">;"
    }
.end annotation


# static fields
.field private static onNavigationEvent:Lo/setShowTimeoutMs;


# instance fields
.field private final onMessageChannelReady:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/setShowShuffleButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/setShowTimeoutMs;

    invoke-direct {v0}, Lo/setShowTimeoutMs;-><init>()V

    sput-object v0, Lo/setShowTimeoutMs;->onNavigationEvent:Lo/setShowTimeoutMs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lo/setRewindIncrementMs;

    invoke-direct {v0}, Lo/setRewindIncrementMs;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setShowTimeoutMs;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/setShowShuffleButton;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/setShowTimeoutMs;->onMessageChannelReady:Lo/onPostExecute;

    return-void
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 1
    sget-object v0, Lo/setShowTimeoutMs;->onNavigationEvent:Lo/setShowTimeoutMs;

    invoke-virtual {v0}, Lo/setShowTimeoutMs;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setShowShuffleButton;

    invoke-interface {v0}, Lo/setShowShuffleButton;->onPostMessage()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/setShowTimeoutMs;->onMessageChannelReady:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setShowShuffleButton;

    return-object v0
.end method
