.class public final enum Lo/toException;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/toException;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/toException;

.field private static final synthetic asInterface:[Lo/toException;

.field public static final enum extraCallback:Lo/toException;

.field public static final enum onNavigationEvent:Lo/toException;

.field public static final enum onPostMessage:Lo/toException;


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    new-instance v0, Lo/toException;

    const/4 v1, 0x0

    const-string v2, "HTTP_1_0"

    const-string v3, "http/1.0"

    invoke-direct {v0, v2, v1, v3}, Lo/toException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/toException;->onNavigationEvent:Lo/toException;

    .line 45
    new-instance v0, Lo/toException;

    const/4 v2, 0x1

    const-string v3, "HTTP_1_1"

    const-string v4, "http/1.1"

    invoke-direct {v0, v3, v2, v4}, Lo/toException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/toException;->extraCallback:Lo/toException;

    .line 57
    new-instance v0, Lo/toException;

    const/4 v3, 0x2

    const-string v4, "SPDY_3"

    const-string v5, "spdy/3.1"

    invoke-direct {v0, v4, v3, v5}, Lo/toException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/toException;->ICustomTabsCallback:Lo/toException;

    .line 69
    new-instance v0, Lo/toException;

    const/4 v4, 0x3

    const-string v5, "HTTP_2"

    const-string v6, "h2"

    invoke-direct {v0, v5, v4, v6}, Lo/toException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/toException;->onPostMessage:Lo/toException;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/toException;

    .line 31
    sget-object v6, Lo/toException;->onNavigationEvent:Lo/toException;

    aput-object v6, v5, v1

    sget-object v1, Lo/toException;->extraCallback:Lo/toException;

    aput-object v1, v5, v2

    sget-object v1, Lo/toException;->ICustomTabsCallback:Lo/toException;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/toException;->asInterface:[Lo/toException;

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

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lo/toException;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Lo/toException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    sget-object v0, Lo/toException;->onNavigationEvent:Lo/toException;

    iget-object v0, v0, Lo/toException;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lo/toException;->onNavigationEvent:Lo/toException;

    return-object p0

    .line 84
    :cond_0
    sget-object v0, Lo/toException;->extraCallback:Lo/toException;

    iget-object v0, v0, Lo/toException;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lo/toException;->extraCallback:Lo/toException;

    return-object p0

    .line 85
    :cond_1
    sget-object v0, Lo/toException;->onPostMessage:Lo/toException;

    iget-object v0, v0, Lo/toException;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lo/toException;->onPostMessage:Lo/toException;

    return-object p0

    .line 86
    :cond_2
    sget-object v0, Lo/toException;->ICustomTabsCallback:Lo/toException;

    iget-object v0, v0, Lo/toException;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lo/toException;->ICustomTabsCallback:Lo/toException;

    return-object p0

    .line 87
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected protocol: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/toException;
    .locals 1

    .line 31
    const-class v0, Lo/toException;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/toException;

    return-object p0
.end method

.method public static values()[Lo/toException;
    .locals 1

    .line 31
    sget-object v0, Lo/toException;->asInterface:[Lo/toException;

    invoke-virtual {v0}, [Lo/toException;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/toException;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/toException;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method
