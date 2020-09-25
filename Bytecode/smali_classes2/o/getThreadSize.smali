.class abstract Lo/getThreadSize;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getThreadSize$ICustomTabsCallback;,
        Lo/getThreadSize$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/getThreadSize;

.field private static final onPostMessage:Lo/getThreadSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lo/getThreadSize$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getThreadSize$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/getThreadSize;->onPostMessage:Lo/getThreadSize;

    .line 46
    new-instance v0, Lo/getThreadSize$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/getThreadSize$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/getThreadSize;->onNavigationEvent:Lo/getThreadSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/getThreadSize;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Lo/getThreadSize;
    .locals 1

    .line 55
    sget-object v0, Lo/getThreadSize;->onPostMessage:Lo/getThreadSize;

    return-object v0
.end method

.method static extraCallback()Lo/getThreadSize;
    .locals 1

    .line 59
    sget-object v0, Lo/getThreadSize;->onNavigationEvent:Lo/getThreadSize;

    return-object v0
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;J)V
.end method
