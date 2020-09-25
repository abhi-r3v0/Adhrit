.class public final Lo/setControlDispatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/setPlaybackPreparer;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:Lo/setControlDispatcher;


# instance fields
.field private final ICustomTabsCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/setPlaybackPreparer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/setControlDispatcher;

    invoke-direct {v0}, Lo/setControlDispatcher;-><init>()V

    sput-object v0, Lo/setControlDispatcher;->extraCallback:Lo/setControlDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lo/setFastForwardIncrementMs;

    invoke-direct {v0}, Lo/setFastForwardIncrementMs;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setControlDispatcher;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/setPlaybackPreparer;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/setControlDispatcher;->ICustomTabsCallback:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 2
    sget-object v0, Lo/setControlDispatcher;->extraCallback:Lo/setControlDispatcher;

    invoke-virtual {v0}, Lo/setControlDispatcher;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPlaybackPreparer;

    invoke-interface {v0}, Lo/setPlaybackPreparer;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 1
    sget-object v0, Lo/setControlDispatcher;->extraCallback:Lo/setControlDispatcher;

    invoke-virtual {v0}, Lo/setControlDispatcher;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPlaybackPreparer;

    invoke-interface {v0}, Lo/setPlaybackPreparer;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/setControlDispatcher;->ICustomTabsCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPlaybackPreparer;

    return-object v0
.end method
