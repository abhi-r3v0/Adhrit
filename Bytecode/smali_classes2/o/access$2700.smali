.class public final enum Lo/access$2700;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/access$2700;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/access$2700;

.field private static enum onMessageChannelReady:Lo/access$2700;

.field public static final enum onNavigationEvent:Lo/access$2700;

.field public static final enum onPostMessage:Lo/access$2700;

.field private static final synthetic onTransact:[Lo/access$2700;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lo/access$2700;

    const/4 v1, 0x0

    const-string v2, "TLS_1_2"

    const-string v3, "TLSv1.2"

    invoke-direct {v0, v2, v1, v3}, Lo/access$2700;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/access$2700;->onPostMessage:Lo/access$2700;

    .line 30
    new-instance v0, Lo/access$2700;

    const/4 v2, 0x1

    const-string v3, "TLS_1_1"

    const-string v4, "TLSv1.1"

    invoke-direct {v0, v3, v2, v4}, Lo/access$2700;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/access$2700;->onNavigationEvent:Lo/access$2700;

    .line 31
    new-instance v0, Lo/access$2700;

    const/4 v3, 0x2

    const-string v4, "TLS_1_0"

    const-string v5, "TLSv1"

    invoke-direct {v0, v4, v3, v5}, Lo/access$2700;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/access$2700;->extraCallback:Lo/access$2700;

    .line 32
    new-instance v0, Lo/access$2700;

    const/4 v4, 0x3

    const-string v5, "SSL_3_0"

    const-string v6, "SSLv3"

    invoke-direct {v0, v5, v4, v6}, Lo/access$2700;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/access$2700;->onMessageChannelReady:Lo/access$2700;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/access$2700;

    .line 28
    sget-object v6, Lo/access$2700;->onPostMessage:Lo/access$2700;

    aput-object v6, v5, v1

    sget-object v1, Lo/access$2700;->onNavigationEvent:Lo/access$2700;

    aput-object v1, v5, v2

    sget-object v1, Lo/access$2700;->extraCallback:Lo/access$2700;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/access$2700;->onTransact:[Lo/access$2700;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lo/access$2700;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;)Lo/access$2700;
    .locals 2

    const-string v0, "TLSv1.2"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object p0, Lo/access$2700;->onPostMessage:Lo/access$2700;

    return-object p0

    :cond_0
    const-string v0, "TLSv1.1"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object p0, Lo/access$2700;->onNavigationEvent:Lo/access$2700;

    return-object p0

    :cond_1
    const-string v0, "TLSv1"

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    sget-object p0, Lo/access$2700;->extraCallback:Lo/access$2700;

    return-object p0

    :cond_2
    const-string v0, "SSLv3"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    sget-object p0, Lo/access$2700;->onMessageChannelReady:Lo/access$2700;

    return-object p0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected TLS version: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/access$2700;
    .locals 1

    .line 28
    const-class v0, Lo/access$2700;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/access$2700;

    return-object p0
.end method

.method public static values()[Lo/access$2700;
    .locals 1

    .line 28
    sget-object v0, Lo/access$2700;->onTransact:[Lo/access$2700;

    invoke-virtual {v0}, [Lo/access$2700;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/access$2700;

    return-object v0
.end method
