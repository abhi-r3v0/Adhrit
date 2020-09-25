.class public final Lo/AudioSink$InitializationException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/AudioProcessor$UnhandledFormatException;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:Lo/AudioSink$InitializationException;


# instance fields
.field private final onPostMessage:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/AudioProcessor$UnhandledFormatException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/AudioSink$InitializationException;

    invoke-direct {v0}, Lo/AudioSink$InitializationException;-><init>()V

    sput-object v0, Lo/AudioSink$InitializationException;->extraCallback:Lo/AudioSink$InitializationException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lo/AudioSink$ConfigurationException;

    invoke-direct {v0}, Lo/AudioSink$ConfigurationException;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/AudioSink$InitializationException;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/AudioProcessor$UnhandledFormatException;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/AudioSink$InitializationException;->onPostMessage:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 2
    sget-object v0, Lo/AudioSink$InitializationException;->extraCallback:Lo/AudioSink$InitializationException;

    invoke-virtual {v0}, Lo/AudioSink$InitializationException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AudioProcessor$UnhandledFormatException;

    invoke-interface {v0}, Lo/AudioProcessor$UnhandledFormatException;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 1
    sget-object v0, Lo/AudioSink$InitializationException;->extraCallback:Lo/AudioSink$InitializationException;

    invoke-virtual {v0}, Lo/AudioSink$InitializationException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AudioProcessor$UnhandledFormatException;

    invoke-interface {v0}, Lo/AudioProcessor$UnhandledFormatException;->onPostMessage()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/AudioSink$InitializationException;->onPostMessage:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AudioProcessor$UnhandledFormatException;

    return-object v0
.end method
