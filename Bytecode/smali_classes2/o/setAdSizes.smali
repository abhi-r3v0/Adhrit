.class final Lo/setAdSizes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildClient;


# static fields
.field static final onPostMessage:Lo/buildClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/setAdSizes;

    invoke-direct {v0}, Lo/setAdSizes;-><init>()V

    sput-object v0, Lo/setAdSizes;->onPostMessage:Lo/buildClient;

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
    invoke-static {p1}, Lo/setAdSize$onNavigationEvent$onPostMessage;->extraCallback(I)Lo/setAdSize$onNavigationEvent$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
