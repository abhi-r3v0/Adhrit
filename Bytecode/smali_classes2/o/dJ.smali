.class public final Lo/dJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/dO;",
        ">;"
    }
.end annotation


# static fields
.field private static onPostMessage:Lo/dJ;


# instance fields
.field private final ICustomTabsCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/dO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/dJ;

    invoke-direct {v0}, Lo/dJ;-><init>()V

    sput-object v0, Lo/dJ;->onPostMessage:Lo/dJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lo/isSuccess;

    invoke-direct {v0}, Lo/isSuccess;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/dJ;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/dO;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/dJ;->ICustomTabsCallback:Lo/onPostExecute;

    return-void
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 1
    sget-object v0, Lo/dJ;->onPostMessage:Lo/dJ;

    invoke-virtual {v0}, Lo/dJ;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dO;

    invoke-interface {v0}, Lo/dO;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/dJ;->ICustomTabsCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dO;

    return-object v0
.end method
