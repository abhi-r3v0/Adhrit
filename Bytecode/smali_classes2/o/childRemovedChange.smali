.class public final enum Lo/childRemovedChange;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/childRemovedChange;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/childRemovedChange;

.field private static final synthetic asInterface:[Lo/childRemovedChange;

.field public static final enum extraCallback:Lo/childRemovedChange;

.field public static final enum onMessageChannelReady:Lo/childRemovedChange;

.field public static final enum onNavigationEvent:Lo/childRemovedChange;

.field public static final enum onPostMessage:Lo/childRemovedChange;


# instance fields
.field final ICustomTabsCallback$Stub:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Lo/childRemovedChange;

    const/4 v1, 0x0

    const-string v2, "TLS_1_3"

    const-string v3, "TLSv1.3"

    invoke-direct {v0, v2, v1, v3}, Lo/childRemovedChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/childRemovedChange;->ICustomTabsCallback:Lo/childRemovedChange;

    .line 28
    new-instance v0, Lo/childRemovedChange;

    const/4 v2, 0x1

    const-string v3, "TLS_1_2"

    const-string v4, "TLSv1.2"

    invoke-direct {v0, v3, v2, v4}, Lo/childRemovedChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/childRemovedChange;->onNavigationEvent:Lo/childRemovedChange;

    .line 29
    new-instance v0, Lo/childRemovedChange;

    const/4 v3, 0x2

    const-string v4, "TLS_1_1"

    const-string v5, "TLSv1.1"

    invoke-direct {v0, v4, v3, v5}, Lo/childRemovedChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/childRemovedChange;->onPostMessage:Lo/childRemovedChange;

    .line 30
    new-instance v0, Lo/childRemovedChange;

    const/4 v4, 0x3

    const-string v5, "TLS_1_0"

    const-string v6, "TLSv1"

    invoke-direct {v0, v5, v4, v6}, Lo/childRemovedChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/childRemovedChange;->onMessageChannelReady:Lo/childRemovedChange;

    .line 31
    new-instance v0, Lo/childRemovedChange;

    const/4 v5, 0x4

    const-string v6, "SSL_3_0"

    const-string v7, "SSLv3"

    invoke-direct {v0, v6, v5, v7}, Lo/childRemovedChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/childRemovedChange;->extraCallback:Lo/childRemovedChange;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/childRemovedChange;

    .line 26
    sget-object v7, Lo/childRemovedChange;->ICustomTabsCallback:Lo/childRemovedChange;

    aput-object v7, v6, v1

    sget-object v1, Lo/childRemovedChange;->onNavigationEvent:Lo/childRemovedChange;

    aput-object v1, v6, v2

    sget-object v1, Lo/childRemovedChange;->onPostMessage:Lo/childRemovedChange;

    aput-object v1, v6, v3

    sget-object v1, Lo/childRemovedChange;->onMessageChannelReady:Lo/childRemovedChange;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/childRemovedChange;->asInterface:[Lo/childRemovedChange;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lo/childRemovedChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Lo/childRemovedChange;
    .locals 6

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x4b88569

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x4c38896

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    .line 51
    sget-object p0, Lo/childRemovedChange;->extraCallback:Lo/childRemovedChange;

    return-object p0

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected TLS version: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_4
    sget-object p0, Lo/childRemovedChange;->onMessageChannelReady:Lo/childRemovedChange;

    return-object p0

    .line 47
    :cond_5
    sget-object p0, Lo/childRemovedChange;->onPostMessage:Lo/childRemovedChange;

    return-object p0

    .line 45
    :cond_6
    sget-object p0, Lo/childRemovedChange;->onNavigationEvent:Lo/childRemovedChange;

    return-object p0

    .line 43
    :cond_7
    sget-object p0, Lo/childRemovedChange;->ICustomTabsCallback:Lo/childRemovedChange;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1dfc3f27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static varargs onNavigationEvent([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/childRemovedChange;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 59
    invoke-static {v3}, Lo/childRemovedChange;->ICustomTabsCallback(Ljava/lang/String;)Lo/childRemovedChange;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/childRemovedChange;
    .locals 1

    .line 26
    const-class v0, Lo/childRemovedChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/childRemovedChange;

    return-object p0
.end method

.method public static values()[Lo/childRemovedChange;
    .locals 1

    .line 26
    sget-object v0, Lo/childRemovedChange;->asInterface:[Lo/childRemovedChange;

    invoke-virtual {v0}, [Lo/childRemovedChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/childRemovedChange;

    return-object v0
.end method
