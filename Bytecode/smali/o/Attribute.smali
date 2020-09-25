.class public Lo/Attribute;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Attribute$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/Attribute;

.field private static onMessageChannelReady:Z


# instance fields
.field private final onPostMessage:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/Attribute$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lo/Attribute;

    invoke-direct {v0}, Lo/Attribute;-><init>()V

    sput-object v0, Lo/Attribute;->extraCallback:Lo/Attribute;

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lo/Attribute;->onMessageChannelReady:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lo/Attribute;->onPostMessage:Ljava/util/Queue;

    return-void
.end method

.method public static onPostMessage()Lo/Attribute;
    .locals 1

    .line 58
    sget-boolean v0, Lo/Attribute;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo/Attribute;

    invoke-direct {v0}, Lo/Attribute;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lo/Attribute;->extraCallback:Lo/Attribute;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Lo/Attribute$onMessageChannelReady;)V
    .locals 2

    .line 67
    sget-boolean v0, Lo/Attribute;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lo/Attribute;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lo/Attribute;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 73
    :cond_1
    iget-object v0, p0, Lo/Attribute;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/Attribute;->onPostMessage:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
