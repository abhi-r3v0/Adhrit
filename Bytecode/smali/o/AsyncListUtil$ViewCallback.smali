.class public final Lo/AsyncListUtil$ViewCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R-\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/payments/statusV2/BankShortCodeMaping;",
        "",
        "()V",
        "issuerCodeToShortCodeMaping",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "getIssuerCodeToShortCodeMaping",
        "()Ljava/util/HashMap;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/AsyncListUtil$ViewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3
    new-instance v0, Lo/AsyncListUtil$ViewCallback;

    invoke-direct {v0}, Lo/AsyncListUtil$ViewCallback;-><init>()V

    sput-object v0, Lo/AsyncListUtil$ViewCallback;->onPostMessage:Lo/AsyncListUtil$ViewCallback;

    const/16 v0, 0x15

    new-array v1, v0, [Lo/addWrite;

    .line 1043
    new-instance v2, Lo/addWrite;

    const-string v3, "999999"

    const-string v4, "HSBC"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "996070"

    const-string v4, "AMEX"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string v3, "607485"

    const-string v4, "CITI"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 4043
    new-instance v2, Lo/addWrite;

    const-string v3, "607420"

    const-string v4, "KOTAK"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 5043
    new-instance v2, Lo/addWrite;

    const-string v3, "607394"

    const-string v4, "SCB"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 6043
    new-instance v2, Lo/addWrite;

    const-string v3, "607393"

    const-string v4, "RBL"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 7043
    new-instance v2, Lo/addWrite;

    const-string v3, "607223"

    const-string v4, "YES"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 8043
    new-instance v2, Lo/addWrite;

    const-string v3, "607189"

    const-string v4, "INDUS"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 9043
    new-instance v2, Lo/addWrite;

    const-string v3, "607184"

    const-string v4, "CORP"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 10043
    new-instance v2, Lo/addWrite;

    const-string v3, "607153"

    const-string v4, "AXIS"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 11043
    new-instance v2, Lo/addWrite;

    const-string v3, "607152"

    const-string v4, "HDFC"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 12043
    new-instance v2, Lo/addWrite;

    const-string v3, "607115"

    const-string v4, "CBI"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 13043
    new-instance v2, Lo/addWrite;

    const-string v3, "607105"

    const-string v4, "INDIAN"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 14043
    new-instance v2, Lo/addWrite;

    const-string v3, "607100"

    const-string v4, "KVB"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 15043
    new-instance v2, Lo/addWrite;

    const-string v3, "606985"

    const-string v4, "BOB"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 16043
    new-instance v2, Lo/addWrite;

    const-string v3, "508568"

    const-string v4, "PNB"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 17043
    new-instance v2, Lo/addWrite;

    const-string v3, "508548"

    const-string v4, "SBI"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 18043
    new-instance v2, Lo/addWrite;

    const-string v3, "508541"

    const-string v4, "IOB"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 19043
    new-instance v2, Lo/addWrite;

    const-string v3, "508534"

    const-string v4, "ICICI"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 20043
    new-instance v2, Lo/addWrite;

    const-string v3, "508532"

    const-string v4, "CNR"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 21043
    new-instance v2, Lo/addWrite;

    const-string v3, "508508"

    const-string v4, "SYND"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string v2, "pairs"

    .line 4
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 4
    sput-object v2, Lo/AsyncListUtil$ViewCallback;->onMessageChannelReady:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Lo/AsyncListUtil$ViewCallback;->onMessageChannelReady:Ljava/util/HashMap;

    return-object v0
.end method
