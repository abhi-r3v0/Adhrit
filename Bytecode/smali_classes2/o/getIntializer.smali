.class final Lo/getIntializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ensureIndexed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ensureIndexed<",
        "Lo/getChildKey;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/matches;


# instance fields
.field private final onNavigationEvent:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EFBBBF"

    .line 26
    invoke-static {v0}, Lo/matches;->ICustomTabsCallback(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/getIntializer;->onMessageChannelReady:Lo/matches;

    return-void
.end method

.method constructor <init>(Lo/JniNativeApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/JniNativeApi<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/getIntializer;->onNavigationEvent:Lo/JniNativeApi;

    return-void
.end method

.method private onNavigationEvent(Lo/getChildKey;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getChildKey;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lo/getChildKey;->onMessageChannelReady()Lo/fullLimitUpdateChild;

    move-result-object v0

    .line 39
    :try_start_0
    sget-object v1, Lo/getIntializer;->onMessageChannelReady:Lo/matches;

    invoke-interface {v0, v1}, Lo/fullLimitUpdateChild;->extraCallback(Lo/matches;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lo/getIntializer;->onMessageChannelReady:Lo/matches;

    invoke-virtual {v1}, Lo/matches;->onTransact()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->asInterface(J)V

    .line 42
    :cond_0
    iget-object v1, p0, Lo/getIntializer;->onNavigationEvent:Lo/JniNativeApi;

    .line 1038
    invoke-static {v0}, Lo/SessionFiles;->onNavigationEvent(Lo/fullLimitUpdateChild;)Lo/SessionFiles;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p1}, Lo/getChildKey;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lo/getChildKey;->close()V

    throw v0
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p1, Lo/getChildKey;

    invoke-direct {p0, p1}, Lo/getIntializer;->onNavigationEvent(Lo/getChildKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
