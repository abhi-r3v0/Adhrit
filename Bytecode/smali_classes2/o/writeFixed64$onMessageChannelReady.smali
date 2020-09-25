.class public final enum Lo/writeFixed64$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeFixed64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeFixed64$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/writeFixed64$onMessageChannelReady;

.field public static final enum asBinder:Lo/writeFixed64$onMessageChannelReady;

.field private static final synthetic asInterface:[Lo/writeFixed64$onMessageChannelReady;

.field public static final enum extraCallback:Lo/writeFixed64$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/writeFixed64$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/writeFixed64$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/writeFixed64$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    new-instance v0, Lo/writeFixed64$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "TARGET_CHANGE"

    invoke-direct {v0, v2, v1}, Lo/writeFixed64$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeFixed64$onMessageChannelReady;->ICustomTabsCallback:Lo/writeFixed64$onMessageChannelReady;

    .line 24
    new-instance v0, Lo/writeFixed64$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "DOCUMENT_CHANGE"

    invoke-direct {v0, v3, v2}, Lo/writeFixed64$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeFixed64$onMessageChannelReady;->onNavigationEvent:Lo/writeFixed64$onMessageChannelReady;

    .line 25
    new-instance v0, Lo/writeFixed64$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "DOCUMENT_DELETE"

    invoke-direct {v0, v4, v3}, Lo/writeFixed64$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeFixed64$onMessageChannelReady;->onPostMessage:Lo/writeFixed64$onMessageChannelReady;

    .line 26
    new-instance v0, Lo/writeFixed64$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "DOCUMENT_REMOVE"

    invoke-direct {v0, v5, v4}, Lo/writeFixed64$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeFixed64$onMessageChannelReady;->extraCallback:Lo/writeFixed64$onMessageChannelReady;

    .line 27
    new-instance v0, Lo/writeFixed64$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "FILTER"

    invoke-direct {v0, v6, v5}, Lo/writeFixed64$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeFixed64$onMessageChannelReady;->onMessageChannelReady:Lo/writeFixed64$onMessageChannelReady;

    .line 28
    new-instance v0, Lo/writeFixed64$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "RESPONSETYPE_NOT_SET"

    invoke-direct {v0, v7, v6}, Lo/writeFixed64$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeFixed64$onMessageChannelReady;->asBinder:Lo/writeFixed64$onMessageChannelReady;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/writeFixed64$onMessageChannelReady;

    .line 22
    sget-object v8, Lo/writeFixed64$onMessageChannelReady;->ICustomTabsCallback:Lo/writeFixed64$onMessageChannelReady;

    aput-object v8, v7, v1

    sget-object v1, Lo/writeFixed64$onMessageChannelReady;->onNavigationEvent:Lo/writeFixed64$onMessageChannelReady;

    aput-object v1, v7, v2

    sget-object v1, Lo/writeFixed64$onMessageChannelReady;->onPostMessage:Lo/writeFixed64$onMessageChannelReady;

    aput-object v1, v7, v3

    sget-object v1, Lo/writeFixed64$onMessageChannelReady;->extraCallback:Lo/writeFixed64$onMessageChannelReady;

    aput-object v1, v7, v4

    sget-object v1, Lo/writeFixed64$onMessageChannelReady;->onMessageChannelReady:Lo/writeFixed64$onMessageChannelReady;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/writeFixed64$onMessageChannelReady;->asInterface:[Lo/writeFixed64$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static onMessageChannelReady(I)Lo/writeFixed64$onMessageChannelReady;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    sget-object p0, Lo/writeFixed64$onMessageChannelReady;->extraCallback:Lo/writeFixed64$onMessageChannelReady;

    return-object p0

    .line 47
    :cond_1
    sget-object p0, Lo/writeFixed64$onMessageChannelReady;->onMessageChannelReady:Lo/writeFixed64$onMessageChannelReady;

    return-object p0

    .line 45
    :cond_2
    sget-object p0, Lo/writeFixed64$onMessageChannelReady;->onPostMessage:Lo/writeFixed64$onMessageChannelReady;

    return-object p0

    .line 44
    :cond_3
    sget-object p0, Lo/writeFixed64$onMessageChannelReady;->onNavigationEvent:Lo/writeFixed64$onMessageChannelReady;

    return-object p0

    .line 43
    :cond_4
    sget-object p0, Lo/writeFixed64$onMessageChannelReady;->ICustomTabsCallback:Lo/writeFixed64$onMessageChannelReady;

    return-object p0

    .line 48
    :cond_5
    sget-object p0, Lo/writeFixed64$onMessageChannelReady;->asBinder:Lo/writeFixed64$onMessageChannelReady;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeFixed64$onMessageChannelReady;
    .locals 1

    .line 22
    const-class v0, Lo/writeFixed64$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeFixed64$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/writeFixed64$onMessageChannelReady;
    .locals 1

    .line 22
    sget-object v0, Lo/writeFixed64$onMessageChannelReady;->asInterface:[Lo/writeFixed64$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/writeFixed64$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeFixed64$onMessageChannelReady;

    return-object v0
.end method
