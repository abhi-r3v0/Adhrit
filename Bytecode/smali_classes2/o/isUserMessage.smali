.class abstract Lo/isUserMessage;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/isUserMessage;

.field private static final onMessageChannelReady:Lo/isUserMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lo/setMessageUserAlias;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setMessageUserAlias;-><init>(Lo/Message;)V

    sput-object v0, Lo/isUserMessage;->extraCallback:Lo/isUserMessage;

    .line 6
    new-instance v0, Lo/setMessageUserType;

    invoke-direct {v0, v1}, Lo/setMessageUserType;-><init>(Lo/Message;)V

    sput-object v0, Lo/isUserMessage;->onMessageChannelReady:Lo/isUserMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/Message;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lo/isUserMessage;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Lo/isUserMessage;
    .locals 1

    .line 2
    sget-object v0, Lo/isUserMessage;->extraCallback:Lo/isUserMessage;

    return-object v0
.end method

.method static onNavigationEvent()Lo/isUserMessage;
    .locals 1

    .line 3
    sget-object v0, Lo/isUserMessage;->onMessageChannelReady:Lo/isUserMessage;

    return-object v0
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;J)V
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

.method abstract onPostMessage(Ljava/lang/Object;J)V
.end method
