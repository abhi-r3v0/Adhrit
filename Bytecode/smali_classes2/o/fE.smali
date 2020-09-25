.class abstract Lo/fE;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/fE;

.field private static final onNavigationEvent:Lo/fE;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lo/be$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/be$a;-><init>(Lo/fZ;)V

    sput-object v0, Lo/fE;->onNavigationEvent:Lo/fE;

    .line 6
    new-instance v0, Lo/fY;

    invoke-direct {v0, v1}, Lo/fY;-><init>(Lo/fZ;)V

    sput-object v0, Lo/fE;->onMessageChannelReady:Lo/fE;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/fZ;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lo/fE;-><init>()V

    return-void
.end method

.method static extraCallback()Lo/fE;
    .locals 1

    .line 3
    sget-object v0, Lo/fE;->onMessageChannelReady:Lo/fE;

    return-object v0
.end method

.method static onPostMessage()Lo/fE;
    .locals 1

    .line 2
    sget-object v0, Lo/fE;->onNavigationEvent:Lo/fE;

    return-object v0
.end method


# virtual methods
.method abstract onMessageChannelReady(Ljava/lang/Object;J)V
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

.method abstract onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;
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
