.class public final Lo/setTimestamp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onNavigationEvent:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/delete<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    sget-object v0, Lo/dm;->onMessageChannelReady:Lo/onPostExecute;

    invoke-static {v0}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object v0

    sput-object v0, Lo/setTimestamp;->onNavigationEvent:Lo/onPostExecute;

    return-void
.end method

.method static final synthetic extraCallback()Lo/delete;
    .locals 1

    .line 1
    new-instance v0, Lo/b$c;

    invoke-direct {v0}, Lo/b$c;-><init>()V

    .line 2
    invoke-virtual {v0}, Lo/b$c;->onNavigationEvent()Lo/delete;

    move-result-object v0

    return-object v0
.end method
