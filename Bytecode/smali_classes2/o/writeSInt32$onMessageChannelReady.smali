.class public final enum Lo/writeSInt32$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSInt32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeSInt32$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/writeSInt32$onMessageChannelReady;

.field public static final enum extraCallback:Lo/writeSInt32$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/writeSInt32$onMessageChannelReady;

.field private static enum onNavigationEvent:Lo/writeSInt32$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/writeSInt32$onMessageChannelReady;

.field private static final synthetic onRelationshipValidationResult:[Lo/writeSInt32$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lo/writeSInt32$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    invoke-direct {v0, v2, v1}, Lo/writeSInt32$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeSInt32$onMessageChannelReady;->onPostMessage:Lo/writeSInt32$onMessageChannelReady;

    .line 24
    new-instance v0, Lo/writeSInt32$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "DELETE"

    invoke-direct {v0, v3, v2}, Lo/writeSInt32$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeSInt32$onMessageChannelReady;->onMessageChannelReady:Lo/writeSInt32$onMessageChannelReady;

    .line 25
    new-instance v0, Lo/writeSInt32$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "VERIFY"

    invoke-direct {v0, v4, v3}, Lo/writeSInt32$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeSInt32$onMessageChannelReady;->extraCallback:Lo/writeSInt32$onMessageChannelReady;

    .line 26
    new-instance v0, Lo/writeSInt32$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "TRANSFORM"

    invoke-direct {v0, v5, v4}, Lo/writeSInt32$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeSInt32$onMessageChannelReady;->ICustomTabsCallback:Lo/writeSInt32$onMessageChannelReady;

    .line 27
    new-instance v0, Lo/writeSInt32$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "OPERATION_NOT_SET"

    invoke-direct {v0, v6, v5}, Lo/writeSInt32$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeSInt32$onMessageChannelReady;->onNavigationEvent:Lo/writeSInt32$onMessageChannelReady;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/writeSInt32$onMessageChannelReady;

    .line 22
    sget-object v7, Lo/writeSInt32$onMessageChannelReady;->onPostMessage:Lo/writeSInt32$onMessageChannelReady;

    aput-object v7, v6, v1

    sget-object v1, Lo/writeSInt32$onMessageChannelReady;->onMessageChannelReady:Lo/writeSInt32$onMessageChannelReady;

    aput-object v1, v6, v2

    sget-object v1, Lo/writeSInt32$onMessageChannelReady;->extraCallback:Lo/writeSInt32$onMessageChannelReady;

    aput-object v1, v6, v3

    sget-object v1, Lo/writeSInt32$onMessageChannelReady;->ICustomTabsCallback:Lo/writeSInt32$onMessageChannelReady;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/writeSInt32$onMessageChannelReady;->onRelationshipValidationResult:[Lo/writeSInt32$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static extraCallback(I)Lo/writeSInt32$onMessageChannelReady;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    sget-object p0, Lo/writeSInt32$onMessageChannelReady;->ICustomTabsCallback:Lo/writeSInt32$onMessageChannelReady;

    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lo/writeSInt32$onMessageChannelReady;->extraCallback:Lo/writeSInt32$onMessageChannelReady;

    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lo/writeSInt32$onMessageChannelReady;->onMessageChannelReady:Lo/writeSInt32$onMessageChannelReady;

    return-object p0

    .line 42
    :cond_3
    sget-object p0, Lo/writeSInt32$onMessageChannelReady;->onPostMessage:Lo/writeSInt32$onMessageChannelReady;

    return-object p0

    .line 46
    :cond_4
    sget-object p0, Lo/writeSInt32$onMessageChannelReady;->onNavigationEvent:Lo/writeSInt32$onMessageChannelReady;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeSInt32$onMessageChannelReady;
    .locals 1

    .line 22
    const-class v0, Lo/writeSInt32$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeSInt32$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/writeSInt32$onMessageChannelReady;
    .locals 1

    .line 22
    sget-object v0, Lo/writeSInt32$onMessageChannelReady;->onRelationshipValidationResult:[Lo/writeSInt32$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/writeSInt32$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeSInt32$onMessageChannelReady;

    return-object v0
.end method
