.class public final Lo/MediaSeekBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/MediaSeekBar;",
        ">;"
    }
.end annotation


# static fields
.field private static onNavigationEvent:Lo/MediaSeekBar$1;


# instance fields
.field private final extraCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/MediaSeekBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/MediaSeekBar$1;

    invoke-direct {v0}, Lo/MediaSeekBar$1;-><init>()V

    sput-object v0, Lo/MediaSeekBar$1;->onNavigationEvent:Lo/MediaSeekBar$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    new-instance v0, Lo/MediaSeekBar$1$1;

    invoke-direct {v0}, Lo/MediaSeekBar$1$1;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/MediaSeekBar$1;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/MediaSeekBar;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSeekBar$1;->extraCallback:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()J
    .locals 2

    .line 4
    sget-object v0, Lo/MediaSeekBar$1;->onNavigationEvent:Lo/MediaSeekBar$1;

    invoke-virtual {v0}, Lo/MediaSeekBar$1;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaSeekBar;

    invoke-interface {v0}, Lo/MediaSeekBar;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 2
    sget-object v0, Lo/MediaSeekBar$1;->onNavigationEvent:Lo/MediaSeekBar$1;

    invoke-virtual {v0}, Lo/MediaSeekBar$1;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaSeekBar;

    invoke-interface {v0}, Lo/MediaSeekBar;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 3
    sget-object v0, Lo/MediaSeekBar$1;->onNavigationEvent:Lo/MediaSeekBar$1;

    invoke-virtual {v0}, Lo/MediaSeekBar$1;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaSeekBar;

    invoke-interface {v0}, Lo/MediaSeekBar;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 1
    sget-object v0, Lo/MediaSeekBar$1;->onNavigationEvent:Lo/MediaSeekBar$1;

    invoke-virtual {v0}, Lo/MediaSeekBar$1;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaSeekBar;

    invoke-interface {v0}, Lo/MediaSeekBar;->onPostMessage()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/MediaSeekBar$1;->extraCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaSeekBar;

    return-object v0
.end method
