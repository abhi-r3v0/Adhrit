.class final Lo/writeFrame;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lo/writeFrame;->onPostMessage()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/writeFrame;->onMessageChannelReady:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final extraCallback(Ljava/lang/String;)Lo/writeSessionEventDevice;
    .locals 4

    .line 82
    sget-object v0, Lo/writeFrame;->onMessageChannelReady:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 88
    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/writeSessionEventDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static onNavigationEvent()Lo/writeSessionEventDevice;
    .locals 1

    const-string v0, "getEmptyRegistry"

    .line 69
    invoke-static {v0}, Lo/writeFrame;->extraCallback(Ljava/lang/String;)Lo/writeSessionEventDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lo/writeSessionEventDevice;->onNavigationEvent:Lo/writeSessionEventDevice;

    return-object v0
.end method

.method private static onPostMessage()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionRegistry"

    .line 52
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
