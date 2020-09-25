.class public final enum Lo/runTransaction;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/runTransaction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic asInterface:[Lo/runTransaction;

.field public static final enum extraCallback:Lo/runTransaction;

.field private static enum onMessageChannelReady:Lo/runTransaction;

.field public static final enum onNavigationEvent:Lo/runTransaction;

.field public static final enum onPostMessage:Lo/runTransaction;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lo/runTransaction;

    const/4 v1, 0x0

    const-string v2, "TLS_1_2"

    const-string v3, "TLSv1.2"

    invoke-direct {v0, v2, v1, v3}, Lo/runTransaction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/runTransaction;->extraCallback:Lo/runTransaction;

    .line 26
    new-instance v0, Lo/runTransaction;

    const/4 v2, 0x1

    const-string v3, "TLS_1_1"

    const-string v4, "TLSv1.1"

    invoke-direct {v0, v3, v2, v4}, Lo/runTransaction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/runTransaction;->onNavigationEvent:Lo/runTransaction;

    .line 27
    new-instance v0, Lo/runTransaction;

    const/4 v3, 0x2

    const-string v4, "TLS_1_0"

    const-string v5, "TLSv1"

    invoke-direct {v0, v4, v3, v5}, Lo/runTransaction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/runTransaction;->onPostMessage:Lo/runTransaction;

    .line 28
    new-instance v0, Lo/runTransaction;

    const/4 v4, 0x3

    const-string v5, "SSL_3_0"

    const-string v6, "SSLv3"

    invoke-direct {v0, v5, v4, v6}, Lo/runTransaction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/runTransaction;->onMessageChannelReady:Lo/runTransaction;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/runTransaction;

    .line 24
    sget-object v6, Lo/runTransaction;->extraCallback:Lo/runTransaction;

    aput-object v6, v5, v1

    sget-object v1, Lo/runTransaction;->onNavigationEvent:Lo/runTransaction;

    aput-object v1, v5, v2

    sget-object v1, Lo/runTransaction;->onPostMessage:Lo/runTransaction;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/runTransaction;->asInterface:[Lo/runTransaction;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lo/runTransaction;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Lo/runTransaction;
    .locals 4

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 42
    sget-object p0, Lo/runTransaction;->onMessageChannelReady:Lo/runTransaction;

    return-object p0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected TLS version: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    sget-object p0, Lo/runTransaction;->onPostMessage:Lo/runTransaction;

    return-object p0

    .line 40
    :cond_3
    sget-object p0, Lo/runTransaction;->onNavigationEvent:Lo/runTransaction;

    return-object p0

    .line 39
    :cond_4
    sget-object p0, Lo/runTransaction;->extraCallback:Lo/runTransaction;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_3
        -0x1dfc3f26 -> :sswitch_2
        0x4b88569 -> :sswitch_1
        0x4c38896 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lo/runTransaction;
    .locals 1

    .line 24
    const-class v0, Lo/runTransaction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/runTransaction;

    return-object p0
.end method

.method public static values()[Lo/runTransaction;
    .locals 1

    .line 24
    sget-object v0, Lo/runTransaction;->asInterface:[Lo/runTransaction;

    invoke-virtual {v0}, [Lo/runTransaction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/runTransaction;

    return-object v0
.end method
