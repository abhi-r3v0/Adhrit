.class final Lo/cG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fI;


# static fields
.field static final extraCallback:Lo/fI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/cG;

    invoke-direct {v0}, Lo/cG;-><init>()V

    sput-object v0, Lo/cG;->extraCallback:Lo/fI;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lo/cB$asBinder$onPostMessage;->onPostMessage(I)Lo/cB$asBinder$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
