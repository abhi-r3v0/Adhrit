.class public final enum Lo/setStackedBackground$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setStackedBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setStackedBackground$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic extraCallback:[Lo/setStackedBackground$ICustomTabsCallback;

.field public static final enum onMessageChannelReady:Lo/setStackedBackground$ICustomTabsCallback;

.field public static final enum onNavigationEvent:Lo/setStackedBackground$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/setStackedBackground$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lo/setStackedBackground$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "LEFT_ALIGN"

    invoke-direct {v0, v2, v1}, Lo/setStackedBackground$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setStackedBackground$ICustomTabsCallback;->onMessageChannelReady:Lo/setStackedBackground$ICustomTabsCallback;

    .line 13
    new-instance v0, Lo/setStackedBackground$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "RIGHT_ALIGN"

    invoke-direct {v0, v3, v2}, Lo/setStackedBackground$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setStackedBackground$ICustomTabsCallback;->onNavigationEvent:Lo/setStackedBackground$ICustomTabsCallback;

    .line 14
    new-instance v0, Lo/setStackedBackground$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "CENTER"

    invoke-direct {v0, v4, v3}, Lo/setStackedBackground$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setStackedBackground$ICustomTabsCallback;->onPostMessage:Lo/setStackedBackground$ICustomTabsCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setStackedBackground$ICustomTabsCallback;

    .line 11
    sget-object v5, Lo/setStackedBackground$ICustomTabsCallback;->onMessageChannelReady:Lo/setStackedBackground$ICustomTabsCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/setStackedBackground$ICustomTabsCallback;->onNavigationEvent:Lo/setStackedBackground$ICustomTabsCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setStackedBackground$ICustomTabsCallback;->extraCallback:[Lo/setStackedBackground$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setStackedBackground$ICustomTabsCallback;
    .locals 1

    .line 11
    const-class v0, Lo/setStackedBackground$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setStackedBackground$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/setStackedBackground$ICustomTabsCallback;
    .locals 1

    .line 11
    sget-object v0, Lo/setStackedBackground$ICustomTabsCallback;->extraCallback:[Lo/setStackedBackground$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/setStackedBackground$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setStackedBackground$ICustomTabsCallback;

    return-object v0
.end method
