.class public final enum Lo/valueChange;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/valueChange;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/valueChange;

.field private static final synthetic asInterface:[Lo/valueChange;

.field public static final enum extraCallback:Lo/valueChange;

.field public static final enum onMessageChannelReady:Lo/valueChange;

.field public static final enum onNavigationEvent:Lo/valueChange;

.field public static final enum onPostMessage:Lo/valueChange;

.field private static enum onTransact:Lo/valueChange;


# instance fields
.field private final ICustomTabsCallback$Stub:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    new-instance v0, Lo/valueChange;

    const/4 v1, 0x0

    const-string v2, "HTTP_1_0"

    const-string v3, "http/1.0"

    invoke-direct {v0, v2, v1, v3}, Lo/valueChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/valueChange;->ICustomTabsCallback:Lo/valueChange;

    .line 41
    new-instance v0, Lo/valueChange;

    const/4 v2, 0x1

    const-string v3, "HTTP_1_1"

    const-string v4, "http/1.1"

    invoke-direct {v0, v3, v2, v4}, Lo/valueChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/valueChange;->onPostMessage:Lo/valueChange;

    .line 51
    new-instance v0, Lo/valueChange;

    const/4 v3, 0x2

    const-string v4, "SPDY_3"

    const-string v5, "spdy/3.1"

    invoke-direct {v0, v4, v3, v5}, Lo/valueChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/valueChange;->onMessageChannelReady:Lo/valueChange;

    .line 62
    new-instance v0, Lo/valueChange;

    const/4 v4, 0x3

    const-string v5, "HTTP_2"

    const-string v6, "h2"

    invoke-direct {v0, v5, v4, v6}, Lo/valueChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/valueChange;->onNavigationEvent:Lo/valueChange;

    .line 71
    new-instance v0, Lo/valueChange;

    const/4 v5, 0x4

    const-string v6, "H2_PRIOR_KNOWLEDGE"

    const-string v7, "h2_prior_knowledge"

    invoke-direct {v0, v6, v5, v7}, Lo/valueChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/valueChange;->extraCallback:Lo/valueChange;

    .line 81
    new-instance v0, Lo/valueChange;

    const/4 v6, 0x5

    const-string v7, "QUIC"

    const-string v8, "quic"

    invoke-direct {v0, v7, v6, v8}, Lo/valueChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/valueChange;->onTransact:Lo/valueChange;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/valueChange;

    .line 29
    sget-object v8, Lo/valueChange;->ICustomTabsCallback:Lo/valueChange;

    aput-object v8, v7, v1

    sget-object v1, Lo/valueChange;->onPostMessage:Lo/valueChange;

    aput-object v1, v7, v2

    sget-object v1, Lo/valueChange;->onMessageChannelReady:Lo/valueChange;

    aput-object v1, v7, v3

    sget-object v1, Lo/valueChange;->onNavigationEvent:Lo/valueChange;

    aput-object v1, v7, v4

    sget-object v1, Lo/valueChange;->extraCallback:Lo/valueChange;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/valueChange;->asInterface:[Lo/valueChange;

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lo/valueChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;)Lo/valueChange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    sget-object v0, Lo/valueChange;->ICustomTabsCallback:Lo/valueChange;

    iget-object v0, v0, Lo/valueChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lo/valueChange;->ICustomTabsCallback:Lo/valueChange;

    return-object p0

    .line 97
    :cond_0
    sget-object v0, Lo/valueChange;->onPostMessage:Lo/valueChange;

    iget-object v0, v0, Lo/valueChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lo/valueChange;->onPostMessage:Lo/valueChange;

    return-object p0

    .line 98
    :cond_1
    sget-object v0, Lo/valueChange;->extraCallback:Lo/valueChange;

    iget-object v0, v0, Lo/valueChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lo/valueChange;->extraCallback:Lo/valueChange;

    return-object p0

    .line 99
    :cond_2
    sget-object v0, Lo/valueChange;->onNavigationEvent:Lo/valueChange;

    iget-object v0, v0, Lo/valueChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lo/valueChange;->onNavigationEvent:Lo/valueChange;

    return-object p0

    .line 100
    :cond_3
    sget-object v0, Lo/valueChange;->onMessageChannelReady:Lo/valueChange;

    iget-object v0, v0, Lo/valueChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lo/valueChange;->onMessageChannelReady:Lo/valueChange;

    return-object p0

    .line 101
    :cond_4
    sget-object v0, Lo/valueChange;->onTransact:Lo/valueChange;

    iget-object v0, v0, Lo/valueChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lo/valueChange;->onTransact:Lo/valueChange;

    return-object p0

    .line 102
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected protocol: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/valueChange;
    .locals 1

    .line 29
    const-class v0, Lo/valueChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/valueChange;

    return-object p0
.end method

.method public static values()[Lo/valueChange;
    .locals 1

    .line 29
    sget-object v0, Lo/valueChange;->asInterface:[Lo/valueChange;

    invoke-virtual {v0}, [Lo/valueChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/valueChange;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lo/valueChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method
