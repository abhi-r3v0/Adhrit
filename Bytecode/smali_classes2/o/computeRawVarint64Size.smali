.class public final Lo/computeRawVarint64Size;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Z

.field private static final onMessageChannelReady:Ljava/lang/Class;
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

    const-string v0, "libcore.io.Memory"

    .line 35
    invoke-static {v0}, Lo/computeRawVarint64Size;->onPostMessage(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/computeRawVarint64Size;->onMessageChannelReady:Ljava/lang/Class;

    const-string v0, "org.robolectric.Robolectric"

    .line 37
    invoke-static {v0}, Lo/computeRawVarint64Size;->onPostMessage(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/computeRawVarint64Size;->ICustomTabsCallback:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lo/computeRawVarint64Size;->onMessageChannelReady:Ljava/lang/Class;

    return-object v0
.end method

.method public static extraCallback()Z
    .locals 1

    .line 41
    sget-object v0, Lo/computeRawVarint64Size;->onMessageChannelReady:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-boolean v0, Lo/computeRawVarint64Size;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static onPostMessage(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method
