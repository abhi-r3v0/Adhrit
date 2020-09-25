.class final Lo/isLayoutRTL$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutRTL;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/AppsFlyerLibCore$a;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/github/rubensousa/gravitysnaphelper/GravitySnapHelper;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/isLayoutRTL$asInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/isLayoutRTL$asInterface;

    invoke-direct {v0}, Lo/isLayoutRTL$asInterface;-><init>()V

    sput-object v0, Lo/isLayoutRTL$asInterface;->onMessageChannelReady:Lo/isLayoutRTL$asInterface;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1089
    new-instance v0, Lo/AppsFlyerLibCore$a;

    invoke-direct {v0}, Lo/AppsFlyerLibCore$a;-><init>()V

    const/high16 v1, 0x41c80000    # 25.0f

    .line 1429
    iput v1, v0, Lo/AppsFlyerLibCore$a;->extraCallback:F

    const/4 v1, -0x1

    .line 2406
    iput v1, v0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback:I

    const/high16 v1, 0x40a00000    # 5.0f

    .line 2407
    iput v1, v0, Lo/AppsFlyerLibCore$a;->onMessageChannelReady:F

    return-object v0
.end method
