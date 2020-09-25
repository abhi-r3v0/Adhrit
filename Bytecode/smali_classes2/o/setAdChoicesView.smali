.class final Lo/setAdChoicesView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildClient;


# static fields
.field static final onMessageChannelReady:Lo/buildClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/setAdChoicesView;

    invoke-direct {v0}, Lo/setAdChoicesView;-><init>()V

    sput-object v0, Lo/setAdChoicesView;->onMessageChannelReady:Lo/buildClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lo/setAdSize$asBinder$onMessageChannelReady;->onPostMessage(I)Lo/setAdSize$asBinder$onMessageChannelReady;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
