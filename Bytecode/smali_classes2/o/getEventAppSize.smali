.class final Lo/getEventAppSize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getWireType;


# static fields
.field private static final onMessageChannelReady:Lo/getEventAppSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lo/getEventAppSize;

    invoke-direct {v0}, Lo/getEventAppSize;-><init>()V

    sput-object v0, Lo/getEventAppSize;->onMessageChannelReady:Lo/getEventAppSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Lo/getEventAppSize;
    .locals 1

    .line 43
    sget-object v0, Lo/getEventAppSize;->onMessageChannelReady:Lo/getEventAppSize;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 48
    const-class v0, Lo/getEventAppExecutionSize;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/Class;)Lo/WireFormat$FieldType$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/WireFormat$FieldType$1;"
        }
    .end annotation

    .line 53
    const-class v0, Lo/getEventAppExecutionSize;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    const-class v0, Lo/getEventAppExecutionSize;

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lo/getEventAppExecutionSize;->getDefaultInstance(Ljava/lang/Class;)Lo/getEventAppExecutionSize;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->buildMessageInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/WireFormat$FieldType$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get message info for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
