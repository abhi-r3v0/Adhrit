.class final enum Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLastBaselineToBottomHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

.field private static final synthetic onMessageChannelReady:[Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

.field public static final enum onNavigationEvent:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

.field public static final enum onPostMessage:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 727
    new-instance v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    const/4 v1, 0x0

    const-string v2, "INITIALIZE"

    invoke-direct {v0, v2, v1}, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    .line 729
    new-instance v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    const/4 v2, 0x1

    const-string v3, "SWITCH_TO_SOURCE_SERVICE"

    invoke-direct {v0, v3, v2}, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    .line 734
    new-instance v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    const/4 v3, 0x2

    const-string v4, "DECODE_DATA"

    invoke-direct {v0, v4, v3}, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->extraCallback:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    .line 725
    sget-object v5, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    aput-object v5, v4, v1

    sget-object v1, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onMessageChannelReady:[Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 725
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;
    .locals 1

    .line 725
    const-class v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    return-object p0
.end method

.method public static values()[Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;
    .locals 1

    .line 725
    sget-object v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onMessageChannelReady:[Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    invoke-virtual {v0}, [Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    return-object v0
.end method
