.class abstract Lo/ConversationDetailActivity$19;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/ConversationDetailActivity$19;

.field private static final extraCallback:Lo/ConversationDetailActivity$19;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lo/ConversationDetailActivity$18;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ConversationDetailActivity$18;-><init>(Lo/ConversationDetailActivity$2;)V

    sput-object v0, Lo/ConversationDetailActivity$19;->ICustomTabsCallback:Lo/ConversationDetailActivity$19;

    .line 6
    new-instance v0, Lo/ConversationDetailActivity$17;

    invoke-direct {v0, v1}, Lo/ConversationDetailActivity$17;-><init>(Lo/ConversationDetailActivity$2;)V

    sput-object v0, Lo/ConversationDetailActivity$19;->extraCallback:Lo/ConversationDetailActivity$19;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ConversationDetailActivity$2;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lo/ConversationDetailActivity$19;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Lo/ConversationDetailActivity$19;
    .locals 1

    .line 2
    sget-object v0, Lo/ConversationDetailActivity$19;->ICustomTabsCallback:Lo/ConversationDetailActivity$19;

    return-object v0
.end method

.method static onMessageChannelReady()Lo/ConversationDetailActivity$19;
    .locals 1

    .line 3
    sget-object v0, Lo/ConversationDetailActivity$19;->extraCallback:Lo/ConversationDetailActivity$19;

    return-object v0
.end method


# virtual methods
.method abstract extraCallback(Ljava/lang/Object;J)V
.end method

.method abstract extraCallback(Ljava/lang/Object;Ljava/lang/Object;J)V
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
