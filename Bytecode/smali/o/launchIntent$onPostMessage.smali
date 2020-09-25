.class public final enum Lo/launchIntent$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/launchIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/launchIntent$onPostMessage$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/launchIntent$onPostMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0080\u0001\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/system/SystemInfo$BatteryStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "CHARGING",
        "DISCHARGING",
        "NOT_CHARGING",
        "FULL",
        "Companion",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/launchIntent$onPostMessage;

.field public static final asInterface:Lo/launchIntent$onPostMessage$onNavigationEvent;

.field public static final enum extraCallback:Lo/launchIntent$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/launchIntent$onPostMessage;

.field public static final enum onNavigationEvent:Lo/launchIntent$onPostMessage;

.field public static final enum onPostMessage:Lo/launchIntent$onPostMessage;

.field private static final synthetic onRelationshipValidationResult:[Lo/launchIntent$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lo/launchIntent$onPostMessage;

    new-instance v1, Lo/launchIntent$onPostMessage;

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lo/launchIntent$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/launchIntent$onPostMessage;->onNavigationEvent:Lo/launchIntent$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/launchIntent$onPostMessage;

    const/4 v3, 0x1

    const-string v4, "CHARGING"

    invoke-direct {v1, v4, v3}, Lo/launchIntent$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/launchIntent$onPostMessage;->extraCallback:Lo/launchIntent$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lo/launchIntent$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "DISCHARGING"

    invoke-direct {v1, v4, v3}, Lo/launchIntent$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/launchIntent$onPostMessage;->ICustomTabsCallback:Lo/launchIntent$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lo/launchIntent$onPostMessage;

    const/4 v3, 0x3

    const-string v4, "NOT_CHARGING"

    invoke-direct {v1, v4, v3}, Lo/launchIntent$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/launchIntent$onPostMessage;->onMessageChannelReady:Lo/launchIntent$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lo/launchIntent$onPostMessage;

    const/4 v3, 0x4

    const-string v4, "FULL"

    invoke-direct {v1, v4, v3}, Lo/launchIntent$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/launchIntent$onPostMessage;->onPostMessage:Lo/launchIntent$onPostMessage;

    aput-object v1, v0, v3

    sput-object v0, Lo/launchIntent$onPostMessage;->onRelationshipValidationResult:[Lo/launchIntent$onPostMessage;

    new-instance v0, Lo/launchIntent$onPostMessage$onNavigationEvent;

    invoke-direct {v0, v2}, Lo/launchIntent$onPostMessage$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/launchIntent$onPostMessage;->asInterface:Lo/launchIntent$onPostMessage$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/launchIntent$onPostMessage;
    .locals 1

    const-class v0, Lo/launchIntent$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/launchIntent$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/launchIntent$onPostMessage;
    .locals 1

    sget-object v0, Lo/launchIntent$onPostMessage;->onRelationshipValidationResult:[Lo/launchIntent$onPostMessage;

    invoke-virtual {v0}, [Lo/launchIntent$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/launchIntent$onPostMessage;

    return-object v0
.end method
