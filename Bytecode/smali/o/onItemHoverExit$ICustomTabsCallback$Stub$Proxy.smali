.class public final Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;
.super Lo/onItemHoverExit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onItemHoverExit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/cred/pay/ui/PaymentScreen$RetryRecommendation;",
        "Lcom/cred/pay/ui/PaymentScreen;",
        "()V",
        "getTag",
        "",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v0}, Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;-><init>()V

    sput-object v0, Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lo/onItemHoverExit;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "retry_recommendation"

    return-object v0
.end method