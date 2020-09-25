.class public final enum Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

.field private static enum extraCallback:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

.field public static final enum onNavigationEvent:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

.field private static final synthetic onPostMessage:[Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 692
    new-instance v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "COMPOSITE_FILTER"

    invoke-direct {v0, v2, v1}, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onMessageChannelReady:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    .line 693
    new-instance v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "FIELD_FILTER"

    invoke-direct {v0, v3, v2}, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->ICustomTabsCallback:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    .line 694
    new-instance v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "UNARY_FILTER"

    invoke-direct {v0, v4, v3}, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onNavigationEvent:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    .line 695
    new-instance v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "FILTERTYPE_NOT_SET"

    invoke-direct {v0, v5, v4}, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->extraCallback:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    .line 691
    sget-object v6, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onMessageChannelReady:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    aput-object v6, v5, v1

    sget-object v1, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->ICustomTabsCallback:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    aput-object v1, v5, v2

    sget-object v1, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onNavigationEvent:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onPostMessage:[Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 697
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static extraCallback(I)Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 712
    :cond_0
    sget-object p0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onNavigationEvent:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    return-object p0

    .line 711
    :cond_1
    sget-object p0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->ICustomTabsCallback:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    return-object p0

    .line 710
    :cond_2
    sget-object p0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onMessageChannelReady:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    return-object p0

    .line 713
    :cond_3
    sget-object p0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->extraCallback:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;
    .locals 1

    .line 691
    const-class v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;
    .locals 1

    .line 691
    sget-object v0, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onPostMessage:[Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    invoke-virtual {v0}, [Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    return-object v0
.end method
