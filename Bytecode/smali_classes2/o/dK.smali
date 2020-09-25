.class public final Lo/dK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/dN;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:Lo/dK;


# instance fields
.field private final ICustomTabsCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/dN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/dK;

    invoke-direct {v0}, Lo/dK;-><init>()V

    sput-object v0, Lo/dK;->extraCallback:Lo/dK;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lo/n$a;

    invoke-direct {v0}, Lo/n$a;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/dK;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/dN;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/dK;->ICustomTabsCallback:Lo/onPostExecute;

    return-void
.end method

.method public static onMessageChannelReady()J
    .locals 2

    .line 2
    sget-object v0, Lo/dK;->extraCallback:Lo/dK;

    invoke-virtual {v0}, Lo/dK;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dN;

    invoke-interface {v0}, Lo/dN;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 1
    sget-object v0, Lo/dK;->extraCallback:Lo/dK;

    invoke-virtual {v0}, Lo/dK;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dN;

    invoke-interface {v0}, Lo/dN;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/dK;->ICustomTabsCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dN;

    return-object v0
.end method
