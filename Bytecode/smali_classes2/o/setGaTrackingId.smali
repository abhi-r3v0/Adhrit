.class public final Lo/setGaTrackingId;
.super Lo/setProjectId;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setGaTrackingId$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setProjectId<",
        "Lo/setDatabaseUrl;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/FlagProviderImpl;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/setProjectId;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default constructor called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lo/FlagProviderImpl;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/setProjectId;-><init>()V

    .line 4
    iput-object p1, p0, Lo/setGaTrackingId;->onPostMessage:Lo/FlagProviderImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lo/FlagProviderImpl;B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lo/setGaTrackingId;-><init>(Lo/FlagProviderImpl;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setStorageBucket;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setStorageBucket;",
            ")",
            "Landroid/util/SparseArray<",
            "Lo/setDatabaseUrl;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 11
    invoke-static {p1}, Lo/getStringFlagValue;->onNavigationEvent(Lo/setStorageBucket;)Lo/getStringFlagValue;

    move-result-object v0

    .line 3018
    iget-object p1, p1, Lo/setStorageBucket;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    .line 17
    iget-object v1, p0, Lo/setGaTrackingId;->onPostMessage:Lo/FlagProviderImpl;

    invoke-virtual {v1, p1, v0}, Lo/FlagProviderImpl;->onMessageChannelReady(Ljava/nio/ByteBuffer;Lo/getStringFlagValue;)[Lo/setDatabaseUrl;

    move-result-object p1

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 19
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 20
    iget-object v4, v3, Lo/setDatabaseUrl;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No frame supplied."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lo/setGaTrackingId;->onPostMessage:Lo/FlagProviderImpl;

    invoke-virtual {v0}, Lo/zzabk;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 6
    invoke-super {p0}, Lo/setProjectId;->onNavigationEvent()V

    .line 7
    iget-object v0, p0, Lo/setGaTrackingId;->onPostMessage:Lo/FlagProviderImpl;

    invoke-virtual {v0}, Lo/zzabk;->ICustomTabsCallback()V

    return-void
.end method
