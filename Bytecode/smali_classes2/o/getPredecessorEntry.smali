.class public final Lo/getPredecessorEntry;
.super Lo/loadNested;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPredecessorEntry$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/loadNested<",
        "Lo/getPredecessorEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/getMaxKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getMaxKey<",
            "*>;"
        }
    .end annotation
.end field

.field public onPostMessage:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 58
    invoke-static {}, Lo/getPredecessorEntry;->extraCallback()Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Lo/getMaxKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMaxKey<",
            "*>;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lo/loadNested;-><init>()V

    if-eqz p1, :cond_0

    .line 128
    check-cast p1, Lo/getMaxKey;

    iput-object p1, p0, Lo/getPredecessorEntry;->onNavigationEvent:Lo/getMaxKey;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "delegateBuilder"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ICustomTabsCallback(Lo/getMaxKey;)Lo/getPredecessorEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMaxKey<",
            "*>;)",
            "Lo/getPredecessorEntry;"
        }
    .end annotation

    .line 109
    new-instance v0, Lo/getPredecessorEntry;

    invoke-direct {v0, p0}, Lo/getPredecessorEntry;-><init>(Lo/getMaxKey;)V

    return-object v0
.end method

.method private static extraCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "o.sendStats"

    .line 62
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()Lo/insert;
    .locals 3

    .line 149
    new-instance v0, Lo/getPredecessorEntry$onMessageChannelReady;

    iget-object v1, p0, Lo/getPredecessorEntry;->onNavigationEvent:Lo/getMaxKey;

    invoke-virtual {v1}, Lo/getMaxKey;->onNavigationEvent()Lo/insert;

    move-result-object v1

    iget-object v2, p0, Lo/getPredecessorEntry;->onPostMessage:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lo/getPredecessorEntry$onMessageChannelReady;-><init>(Lo/insert;Landroid/content/Context;)V

    return-object v0
.end method

.method public final onPostMessage()Lo/getMaxKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getMaxKey<",
            "*>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lo/getPredecessorEntry;->onNavigationEvent:Lo/getMaxKey;

    return-object v0
.end method
