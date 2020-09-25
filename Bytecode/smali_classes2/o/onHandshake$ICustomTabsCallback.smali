.class final enum Lo/onHandshake$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/onHandshake$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onHandshake$ICustomTabsCallback;",
        ">;",
        "Lo/onHandshake$extraCallback;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/onHandshake$ICustomTabsCallback;

.field public static final enum extraCallback:Lo/onHandshake$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 642
    new-instance v0, Lo/onHandshake$ICustomTabsCallback;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lo/onHandshake$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/onHandshake$ICustomTabsCallback;->extraCallback:Lo/onHandshake$ICustomTabsCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/onHandshake$ICustomTabsCallback;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 641
    sput-object v1, Lo/onHandshake$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onHandshake$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 641
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/onHandshake$ICustomTabsCallback;
    .locals 1

    .line 641
    const-class v0, Lo/onHandshake$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/onHandshake$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/onHandshake$ICustomTabsCallback;
    .locals 1

    .line 641
    sget-object v0, Lo/onHandshake$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onHandshake$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/onHandshake$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onHandshake$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 646
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
