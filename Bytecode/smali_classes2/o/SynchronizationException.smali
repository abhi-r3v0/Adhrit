.class public final Lo/SynchronizationException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/EventStoreModule;",
        ">;"
    }
.end annotation


# static fields
.field private static onPostMessage:Lo/SynchronizationException;


# instance fields
.field private final onNavigationEvent:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/EventStoreModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/SynchronizationException;

    invoke-direct {v0}, Lo/SynchronizationException;-><init>()V

    sput-object v0, Lo/SynchronizationException;->onPostMessage:Lo/SynchronizationException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lo/ExoPlaybackException;

    invoke-direct {v0}, Lo/ExoPlaybackException;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/SynchronizationException;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/EventStoreModule;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/SynchronizationException;->onNavigationEvent:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 2
    sget-object v0, Lo/SynchronizationException;->onPostMessage:Lo/SynchronizationException;

    invoke-virtual {v0}, Lo/SynchronizationException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/EventStoreModule;

    invoke-interface {v0}, Lo/EventStoreModule;->extraCallback()Z

    move-result v0

    return v0
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 1
    sget-object v0, Lo/SynchronizationException;->onPostMessage:Lo/SynchronizationException;

    invoke-virtual {v0}, Lo/SynchronizationException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/EventStoreModule;

    invoke-interface {v0}, Lo/EventStoreModule;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/SynchronizationException;->onNavigationEvent:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/EventStoreModule;

    return-object v0
.end method
