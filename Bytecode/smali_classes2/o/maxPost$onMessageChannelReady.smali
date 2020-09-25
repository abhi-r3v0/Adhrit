.class final Lo/maxPost$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ensureIndexed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/maxPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ensureIndexed<",
        "Lo/getChildKey;",
        "Lo/getChildKey;",
        ">;"
    }
.end annotation


# static fields
.field static final onMessageChannelReady:Lo/maxPost$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lo/maxPost$onMessageChannelReady;

    invoke-direct {v0}, Lo/maxPost$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/maxPost$onMessageChannelReady;->onMessageChannelReady:Lo/maxPost$onMessageChannelReady;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onNavigationEvent(Lo/getChildKey;)Lo/getChildKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    :try_start_0
    invoke-static {p0}, Lo/nameAndPriorityCompare;->extraCallback(Lo/getChildKey;)Lo/getChildKey;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p0}, Lo/getChildKey;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lo/getChildKey;->close()V

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

    .line 75
    check-cast p1, Lo/getChildKey;

    invoke-static {p1}, Lo/maxPost$onMessageChannelReady;->onNavigationEvent(Lo/getChildKey;)Lo/getChildKey;

    move-result-object p1

    return-object p1
.end method
